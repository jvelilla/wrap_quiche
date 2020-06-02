-- enum wrapper
class QUICHE_SHUTDOWN_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = quiche_shutdown_read or a_value = quiche_shutdown_write
		end

	quiche_shutdown_read: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_SHUTDOWN_READ"
		end

	quiche_shutdown_write: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_SHUTDOWN_WRITE"
		end

end
