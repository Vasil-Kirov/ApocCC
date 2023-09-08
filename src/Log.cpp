#include <Basic.h>
#include <Log.h>
#include <stdarg.h>
#include <platform/platform.h>

static const char * const LevelLabels[] = {
	"[FATAL] ", "[ERROR] ", "[WARNING] ", "[DEBUG] ", "[INFO] "
};

static char LogFile[260];

void
initialize_logger()
{
	platform_get_absolute_path(LogFile);
	vstd_strcat(LogFile, "Errors.log");
	platform_write_file((void *)"", 0, LogFile, true);
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
	platform_output_string(ToPrint, Level);
	
	if(Level < LOG_WARN || Level == LOG_DEBUG)
	{
		platform_write_file(ToPrint, (i32)vstd_strlen(ToPrint), LogFile, false);
	}
	
	if(Level == LOG_FATAL)
	{
#if DEBUG
		__debugbreak();
#endif
//		platform_message_box("Error", ToPrint);
		platform_exit(1);
	}
}

