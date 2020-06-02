#include <ewg_eiffel.h>
#include <ewg_quiche_callback_c_glue_code.h>

#ifdef _MSC_VER
#pragma warning (disable:4715) // Not all control paths return a value
#endif
void* cb_logging_object =  NULL;
cb_logging_eiffel_feature cb_logging_address_1 = NULL;
cb_logging_eiffel_feature cb_logging_address_2 = NULL;
cb_logging_eiffel_feature cb_logging_address_3 = NULL;

void set_cb_logging_object (void* a_object)
{
	if (a_object) {
		cb_logging_object = eif_protect(a_object);
	} else { 
		cb_logging_object = NULL;
	}
}

void release_cb_logging_object ()
{
	eif_wean (cb_logging_object);
}

void cb_logging_stub_1 (char const *line, void *argp)
{
	if (cb_logging_object != NULL && cb_logging_address_1 != NULL)
	{
		cb_logging_address_1 (eif_access(cb_logging_object), line, argp);
	}
}

void cb_logging_stub_2 (char const *line, void *argp)
{
	if (cb_logging_object != NULL && cb_logging_address_2 != NULL)
	{
		cb_logging_address_2 (eif_access(cb_logging_object), line, argp);
	}
}

void cb_logging_stub_3 (char const *line, void *argp)
{
	if (cb_logging_object != NULL && cb_logging_address_3 != NULL)
	{
		cb_logging_address_3 (eif_access(cb_logging_object), line, argp);
	}
}

void set_cb_logging_entry_1 (void* a_feature){
	cb_logging_address_1 = (cb_logging_eiffel_feature) a_feature;
}

void set_cb_logging_entry_2 (void* a_feature){
	cb_logging_address_2 = (cb_logging_eiffel_feature) a_feature;
}

void set_cb_logging_entry_3 (void* a_feature){
	cb_logging_address_3 = (cb_logging_eiffel_feature) a_feature;
}

void* get_cb_logging_stub_1 (){
	return (void*) cb_logging_stub_1;
}

void* get_cb_logging_stub_2 (){
	return (void*) cb_logging_stub_2;
}

void* get_cb_logging_stub_3 (){
	return (void*) cb_logging_stub_3;
}

void call_cb_logging (void *a_function, char const *line, void *argp)
{
	((void (*) (char const *line, void *argp))a_function) (line, argp);
}

void* cb_event_header_object =  NULL;
cb_event_header_eiffel_feature cb_event_header_address_1 = NULL;
cb_event_header_eiffel_feature cb_event_header_address_2 = NULL;
cb_event_header_eiffel_feature cb_event_header_address_3 = NULL;

void set_cb_event_header_object (void* a_object)
{
	if (a_object) {
		cb_event_header_object = eif_protect(a_object);
	} else { 
		cb_event_header_object = NULL;
	}
}

void release_cb_event_header_object ()
{
	eif_wean (cb_event_header_object);
}

int cb_event_header_stub_1 (uint8_t *name, size_t name_len, uint8_t *value, size_t value_len, void *argp)
{
	if (cb_event_header_object != NULL && cb_event_header_address_1 != NULL)
	{
		return cb_event_header_address_1 (eif_access(cb_event_header_object), name, name_len, value, value_len, argp);
	}
}

int cb_event_header_stub_2 (uint8_t *name, size_t name_len, uint8_t *value, size_t value_len, void *argp)
{
	if (cb_event_header_object != NULL && cb_event_header_address_2 != NULL)
	{
		return cb_event_header_address_2 (eif_access(cb_event_header_object), name, name_len, value, value_len, argp);
	}
}

int cb_event_header_stub_3 (uint8_t *name, size_t name_len, uint8_t *value, size_t value_len, void *argp)
{
	if (cb_event_header_object != NULL && cb_event_header_address_3 != NULL)
	{
		return cb_event_header_address_3 (eif_access(cb_event_header_object), name, name_len, value, value_len, argp);
	}
}

void set_cb_event_header_entry_1 (void* a_feature){
	cb_event_header_address_1 = (cb_event_header_eiffel_feature) a_feature;
}

void set_cb_event_header_entry_2 (void* a_feature){
	cb_event_header_address_2 = (cb_event_header_eiffel_feature) a_feature;
}

void set_cb_event_header_entry_3 (void* a_feature){
	cb_event_header_address_3 = (cb_event_header_eiffel_feature) a_feature;
}

void* get_cb_event_header_stub_1 (){
	return (void*) cb_event_header_stub_1;
}

void* get_cb_event_header_stub_2 (){
	return (void*) cb_event_header_stub_2;
}

void* get_cb_event_header_stub_3 (){
	return (void*) cb_event_header_stub_3;
}

int call_cb_event_header (void *a_function, uint8_t *name, size_t name_len, uint8_t *value, size_t value_len, void *argp)
{
	return ((int (*) (uint8_t *name, size_t name_len, uint8_t *value, size_t value_len, void *argp))a_function) (name, name_len, value, value_len, argp);
}

