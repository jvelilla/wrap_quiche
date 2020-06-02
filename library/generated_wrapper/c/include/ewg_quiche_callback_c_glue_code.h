#ifndef EWG_CALLBACK_QUICHE___
#define EWG_CALLBACK_QUICHE___

#include <eif_quiche.h>

typedef void (*cb_logging_eiffel_feature) (void *a_class, char const *line, void *argp);

void* cb_logging_object;
cb_logging_eiffel_feature cb_logging_address_1;
cb_logging_eiffel_feature cb_logging_address_2;
cb_logging_eiffel_feature cb_logging_address_3;

void set_cb_logging_object (void* a_class);

void release_cb_logging_object (void);

void* get_cb_logging_stub_1 ();
void* get_cb_logging_stub_2 ();
void* get_cb_logging_stub_3 ();

void set_cb_logging_entry_1 (void* a_feature);
void set_cb_logging_entry_2 (void* a_feature);
void set_cb_logging_entry_3 (void* a_feature);

void call_cb_logging (void *a_function, char const *line, void *argp);


#include <eif_quiche.h>

typedef int (*cb_event_header_eiffel_feature) (void *a_class, uint8_t *name, size_t name_len, uint8_t *value, size_t value_len, void *argp);

void* cb_event_header_object;
cb_event_header_eiffel_feature cb_event_header_address_1;
cb_event_header_eiffel_feature cb_event_header_address_2;
cb_event_header_eiffel_feature cb_event_header_address_3;

void set_cb_event_header_object (void* a_class);

void release_cb_event_header_object (void);

void* get_cb_event_header_stub_1 ();
void* get_cb_event_header_stub_2 ();
void* get_cb_event_header_stub_3 ();

void set_cb_event_header_entry_1 (void* a_feature);
void set_cb_event_header_entry_2 (void* a_feature);
void set_cb_event_header_entry_3 (void* a_feature);

int call_cb_event_header (void *a_function, uint8_t *name, size_t name_len, uint8_t *value, size_t value_len, void *argp);


#endif
