#if defined(_WIN32)

#include <platform/platform.h>
#include <Windows.h>


static HINSTANCE Instance;
static HWND Window;
static RAWINPUT *RawInputMemory;




LRESULT WINAPI
WindowProc(HWND Window, UINT Message, WPARAM wParam, LPARAM lParam);

void
RegisterRawInput();

void
PlatformGetAbsolutePath(char *Out)
{
	if (!GetModuleFileNameA(NULL, Out, MAX_PATH))
	{
		// This can't be an error since it will result in an infinite loop
		// as errors and fatal errors call this function
		LG_WARN("Failed to get directory location, file path might be too long");
	}
	size_t Size = vstd_strlen(Out);
	
	// NOTE(Vasko): Remove exe file name
	for(size_t i = Size-1; i >= 0; --i)
	{
		if(Out[i] == '\\')
		{
			Out[i+1] = '\0';
			break;
		}
	}
}

void
PlatformMessageBox(const char *Caption, const char *Text)
{
	MessageBoxA(Window, Text, Caption, MB_OK);
}

b32
PlatformWriteFile(void *Data, i32 BytesToWrite, const char *Path, b32 Overwrite)
{
	b32 IsSTD = false;
    HANDLE File;
    if(Path[1] == '\0')
    {
        switch(Path[0])
        {
            case '0':
            {
                File = GetStdHandle((DWORD)-11);
				IsSTD = true;
            }break;
            case '1':
            {
                File = GetStdHandle((DWORD)-12);
				IsSTD = true;
            }break;
            default:
			{
				return false;
			}break;
        }
    }
    else
    {
		if(Overwrite)
		{
			DeleteFile(Path);
		}
		File = CreateFileA(Path, FILE_GENERIC_WRITE , 0, 0,
                           OPEN_ALWAYS, FILE_ATTRIBUTE_NORMAL,
                           0);
		// NOTE(Vasko): FILE_GENERIC_WRITE should do that by itself
		// but it doesn't
		SetFilePointer(File, 0, 0, FILE_END);
    }
    
    DWORD BytesWritten;
    WriteFile(File, Data, BytesToWrite, &BytesWritten, 0);
	if(!IsSTD) CloseHandle(File);
	if(BytesWritten == 0) return false;
    return true;
}

platform_thread
PlatformCreateThread(void *Func, void *Args)
{
	return CreateThread(0, 0, (LPTHREAD_START_ROUTINE)Func, Args, 0, 0);
}

void
PlatformWaitForThread(platform_thread Thread)
{
	WaitForSingleObject(Thread, INFINITE);
}

b32
PlatformIsThreadOver(platform_thread Thread)
{
	DWORD Result = WaitForSingleObject(Thread, 0);
	return Result == WAIT_OBJECT_0;
}

void
PlatformOutputString(char *String, log_level Level)
{
    //		MAGIC NUMBERS! (ored rgb)
	//		13 = r | b | intense
	//		4 = r
	//		6 = r | g
	//		8 = intense
    u8 Colors[] = {13, 4, 6, FOREGROUND_GREEN | FOREGROUND_INTENSITY, 8};
	HANDLE STDOUT = GetStdHandle(STD_OUTPUT_HANDLE);
	//		FATAL = 0
	//		ERROR = 1
	//		WARN = 2
	//		INFO = 4
	
	u16 Attrib = Colors[Level];
	SetConsoleTextAttribute(STDOUT, Attrib);
	OutputDebugString(String);
	unsigned long written = 0;
	WriteFile(STDOUT, String, (DWORD)vstd_strlen((char *)String), &written, 0);
	SetConsoleTextAttribute(STDOUT, FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
}

void
PlatformQuit()
{
	PostQuitMessage(0);
}

void
PlatformSetWindowSize(Quad NewSize)
{
	RECT Client = {0};
	GetClientRect(Window, &Client);
	
	SetWindowPos(Window, HWND_TOP, Client.left, Client.top, NewSize.Width, NewSize.Height, SWP_SHOWWINDOW);
}


void
PlatformExit(i32 ExitCode)
{
	ExitProcess(ExitCode);
}

void
PlatformInitialize()
{
    Instance = GetModuleHandle(0);
}


platform_state
PlatformGetState()
{
	return (platform_state)Window;
}

static i32 ShortcutTimer;

b32
PlatformHandleMessages()
{
	MSG Message;
	ZeroMemory(&Message, sizeof(Message));
	while(PeekMessage(&Message, 0, 0U, 0U, PM_REMOVE))
	{
		TranslateMessage(&Message);
		DispatchMessage(&Message);
		if(Message.message == WM_QUIT)
		{
			return false;
		}
		
		if(ShortcutTimer > 0)
		{
			ShortcutTimer--;
		}
	}
	
	return true;
}

void *
PlatformReserveMemory(u64 Size)
{
	return VirtualAlloc(NULL, Size, MEM_RESERVE, PAGE_READWRITE);
}

void
PlatformAllocateReserved(void *Address, u64 Size)
{
	VirtualAlloc(Address, Size, MEM_COMMIT, PAGE_READWRITE);
}

void *
PlatformAllocateChunk(u64 Size)
{
	return VirtualAlloc(NULL, Size, MEM_RESERVE|MEM_COMMIT, PAGE_READWRITE);
}

void
PlatformFreeChunk(void *Chunk)
{
	VirtualFree(Chunk, 0, MEM_RELEASE);
}

u64
PlatformGetFileSize(char *Path)
{
	HANDLE File = CreateFile(Path, GENERIC_READ, 0, 0, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
	
	
	if(File == INVALID_HANDLE_VALUE) return 0;
	
	
	LARGE_INTEGER Size;
	GetFileSizeEx(File, &Size);
	CloseHandle(File);
	
	return Size.QuadPart;
}

b32
PlatformReadEntireFile(void *Data, u64 *Size, char *Path)
{
	HANDLE File = CreateFile(Path, GENERIC_READ, 0, 0, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
	if(File == NULL) 
	{
		return false;
	}
	LARGE_INTEGER FileSize;
	GetFileSizeEx(File, &FileSize);
	*Size = FileSize.QuadPart;
	
	u64 HaveRead = 0;
	while(FileSize.QuadPart > 0)
	{
		DWORD ReadThisLoop;
		DWORD ToRead = (DWORD)FileSize.QuadPart;
		if(FileSize.QuadPart > UINT32_MAX)
		{
			ToRead = UINT32_MAX;
		}
		ReadFile(File, Data+HaveRead, ToRead, &ReadThisLoop, NULL);
		if(ReadThisLoop == 0)
		{
			CloseHandle(File);
			return false;
		}
		FileSize.QuadPart -= ReadThisLoop;
		HaveRead += ReadThisLoop;
	}
	
	CloseHandle(File);
	return true;
}


LRESULT WINAPI
WindowProc(HWND ThisWindow, UINT Message, WPARAM wParam, LPARAM lParam)
{
	
	switch (Message)
	{
		
		// NOTE(Vasko): might wanna look into this more
#if 0
		case WM_SYSCOMMAND:
		{
			if ((wParam & 0xfff0) == SC_KEYMENU) // Disable ALT application menu
				return 0;
		}break;
#endif
		
		case WM_DESTROY:
		{
			PostQuitMessage(0);
		}break;
		
		default:
		{
			return DefWindowProc(ThisWindow, Message, wParam, lParam);
		}
	}
	return 0;
}

#endif