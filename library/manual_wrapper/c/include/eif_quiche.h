#include <quiche.h>

typedef void (*cb_logging)(const char *line, void *argp);

typedef int (*cb_event_header)(uint8_t *name, size_t name_len, uint8_t *value, size_t value_len, void *argp);