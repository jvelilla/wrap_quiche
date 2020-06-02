-- enum wrapper
class QUICHE_H3_ERROR_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = quiche_h3_err_done or a_value = quiche_h3_err_buffer_too_short or a_value = quiche_h3_err_internal_error or a_value = quiche_h3_err_excessive_load or a_value = quiche_h3_err_id_error or a_value = quiche_h3_err_stream_creation_error or a_value = quiche_h3_err_closed_critical_stream or a_value = quiche_h3_err_missing_settings or a_value = quiche_h3_err_frame_unexpected or a_value = quiche_h3_err_frame_error or a_value = quiche_h3_err_qpack_decompression_failed or a_value = quiche_h3_err_transport_error or a_value = quiche_h3_err_stream_blocked
		end

	quiche_h3_err_done: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_ERR_DONE"
		end

	quiche_h3_err_buffer_too_short: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_ERR_BUFFER_TOO_SHORT"
		end

	quiche_h3_err_internal_error: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_ERR_INTERNAL_ERROR"
		end

	quiche_h3_err_excessive_load: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_ERR_EXCESSIVE_LOAD"
		end

	quiche_h3_err_id_error: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_ERR_ID_ERROR"
		end

	quiche_h3_err_stream_creation_error: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_ERR_STREAM_CREATION_ERROR"
		end

	quiche_h3_err_closed_critical_stream: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_ERR_CLOSED_CRITICAL_STREAM"
		end

	quiche_h3_err_missing_settings: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_ERR_MISSING_SETTINGS"
		end

	quiche_h3_err_frame_unexpected: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_ERR_FRAME_UNEXPECTED"
		end

	quiche_h3_err_frame_error: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_ERR_FRAME_ERROR"
		end

	quiche_h3_err_qpack_decompression_failed: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_ERR_QPACK_DECOMPRESSION_FAILED"
		end

	quiche_h3_err_transport_error: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_ERR_TRANSPORT_ERROR"
		end

	quiche_h3_err_stream_blocked: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_ERR_STREAM_BLOCKED"
		end

end
