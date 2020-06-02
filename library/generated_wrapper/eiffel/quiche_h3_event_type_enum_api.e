-- enum wrapper
class QUICHE_H3_EVENT_TYPE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = quiche_h3_event_headers or a_value = quiche_h3_event_data or a_value = quiche_h3_event_finished
		end

	quiche_h3_event_headers: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_EVENT_HEADERS"
		end

	quiche_h3_event_data: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_EVENT_DATA"
		end

	quiche_h3_event_finished: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_H3_EVENT_FINISHED"
		end

end
