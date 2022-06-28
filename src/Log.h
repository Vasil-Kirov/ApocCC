/* date = January 26th 2022 0:24 pm */

#ifndef _LOG_H
#define _LOG_H

typedef enum _log_level
{
	LOG_FATAL,
	LOG_ERROR,
	LOG_WARN,
	LOG_DEBUG,
	LOG_INFO
} log_level;

void Log(log_level Level, const char *Format, ...);

void initialize_logger();

#define LG_FATAL(Format, ...) Log(LOG_FATAL, Format, __VA_ARGS__)
#define LG_ERROR(Format, ...) Log(LOG_ERROR, Format, __VA_ARGS__)
#define LG_WARN(Format, ...) Log(LOG_WARN, Format, __VA_ARGS__)
#define LG_INFO(Format, ...) Log(LOG_INFO, Format, __VA_ARGS__)

#if defined(DEBUG_MODE)
#define LG_DEBUG(Format, ...) Log(LOG_DEBUG, Format, __VA_ARGS__)
#else
#define LG_DEBUG(Format, ...)
#endif

#endif //_LOG_H
