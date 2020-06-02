note
	description: "server application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS_32

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			soc: NETWORK_DATAGRAM_SOCKET
--			ps: MEDIUM_POLLER
			res: INTEGER
			cb_loggin: CB_LOGGING_DISPATCHER
			config: CONFIG_STRUCT_API
		do
			create soc.make_targeted ("127.0.0.1", 4433)

			create cb_loggin.make
			cb_loggin.register_callback_1 (agent debug_log)
			res := {QUICHE_FUNCTIONS}.quiche_enable_debug_logging (cb_loggin.c_dispatcher_1, default_pointer)

			if attached {QUICHE_FUNCTIONS}.quiche_config_new({QUICHE_CONSTANTS}.QUICHE_PROTOCOL_VERSION) as l_config then
				res := {QUICHE_FUNCTIONS}.quiche_config_load_cert_chain_from_pem_file (l_config, "cert.crt")
				res := {QUICHE_FUNCTIONS}.quiche_config_load_priv_key_from_pem_file(l_config, "cert.key")
				res := {QUICHE_FUNCTIONS}.quiche_config_set_application_protos (l_config, "\x05hq-27\x08http/0.9", 15)
				{QUICHE_FUNCTIONS}.quiche_config_set_max_idle_timeout (l_config, 5000)
				{QUICHE_FUNCTIONS}.quiche_config_set_max_packet_size (l_config, MAX_DATAGRAM_SIZE)
				{QUICHE_FUNCTIONS}.quiche_config_set_max_packet_size (l_config, 10000000)
				{QUICHE_FUNCTIONS}.quiche_config_set_initial_max_stream_data_bidi_local (l_config, 10000000)
				{QUICHE_FUNCTIONS}.quiche_config_set_initial_max_stream_data_bidi_remote(l_config, 1000000)
				{QUICHE_FUNCTIONS}.quiche_config_set_initial_max_streams_bidi(l_config, 100)
				{QUICHE_FUNCTIONS}.quiche_config_set_cc_algorithm(l_config, {QUICHE_CC_ALGORITHM_ENUM_API}.QUICHE_CC_RENO)

			else
			 	print ("Failed to create config %N")
			 	{EXCEPTIONS}.die (1)
			 end
		end


	debug_log (a_line: POINTER; argp: POINTER)
		do
			if a_line /= default_pointer then
				print ("Error: " + (create {C_STRING}.make_by_pointer (a_line)).string + "%N")
			end
		end



feature -- Constants

	MAX_DATAGRAM_SIZE: INTEGER = 1350

end
