-- enum wrapper
class QUICHE_ERROR_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = quiche_err_done or a_value = quiche_err_buffer_too_short or a_value = quiche_err_unknown_version or a_value = quiche_err_invalid_frame or a_value = quiche_err_invalid_packet or a_value = quiche_err_invalid_state or a_value = quiche_err_invalid_stream_state or a_value = quiche_err_invalid_transport_param or a_value = quiche_err_crypto_fail or a_value = quiche_err_tls_fail or a_value = quiche_err_flow_control or a_value = quiche_err_stream_limit or a_value = quiche_err_final_size or a_value = quiche_err_congestion_control
		end

	quiche_err_done: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_ERR_DONE"
		end

	quiche_err_buffer_too_short: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_ERR_BUFFER_TOO_SHORT"
		end

	quiche_err_unknown_version: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_ERR_UNKNOWN_VERSION"
		end

	quiche_err_invalid_frame: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_ERR_INVALID_FRAME"
		end

	quiche_err_invalid_packet: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_ERR_INVALID_PACKET"
		end

	quiche_err_invalid_state: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_ERR_INVALID_STATE"
		end

	quiche_err_invalid_stream_state: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_ERR_INVALID_STREAM_STATE"
		end

	quiche_err_invalid_transport_param: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_ERR_INVALID_TRANSPORT_PARAM"
		end

	quiche_err_crypto_fail: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_ERR_CRYPTO_FAIL"
		end

	quiche_err_tls_fail: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_ERR_TLS_FAIL"
		end

	quiche_err_flow_control: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_ERR_FLOW_CONTROL"
		end

	quiche_err_stream_limit: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_ERR_STREAM_LIMIT"
		end

	quiche_err_final_size: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_ERR_FINAL_SIZE"
		end

	quiche_err_congestion_control: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_ERR_CONGESTION_CONTROL"
		end

end
