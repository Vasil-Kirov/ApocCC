#include <Log.h>
#include <stdarg.h>

static const char * const LevelLabels[] = {
	"[FATAL] ", "[ERROR] ", "[WARNING] ", "[DEBUG] ", "[INFO] "
};

static char LogFile[260];

void
initialize_logger()
{
	PlatformGetAbsolutePath(LogFile);
	vstd_strcat(LogFile, "Errors.log");
	PlatformWriteFile((void *)"", 0, LogFile, true);
}

void
Log(log_level Level, const char *Format, ...)
{
	char FormatCopy[4096] = {0};
	vstd_strcat(FormatCopy, LevelLabels[Level]);
	vstd_strcat(FormatCopy, Format);
	
	char ToPrint[4096] = {0};
	va_list Args;
	va_start(Args, Format);
	
	vstd_vsnsprintf(ToPrint, vstd_strlen(FormatCopy), FormatCopy, Args);
	
	va_end(Args);
	
	vstd_strcat(ToPrint, "\n");
	PlatformOutputString(ToPrint, Level);
	
	if(Level < LOG_WARN || Level == LOG_DEBUG)
	{
		PlatformWriteFile(ToPrint, (i32)vstd_strlen(ToPrint), LogFile, false);
	}
	
	if(Level == LOG_FATAL)
	{
//		PlatformMessageBox("Error", ToPrint);
		PlatformExit(1);
	}
}