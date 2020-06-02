-- enum wrapper
class QUICHE_CC_ALGORITHM_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = quiche_cc_reno or a_value = quiche_cc_cubic
		end

	quiche_cc_reno: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_CC_RENO"
		end

	quiche_cc_cubic: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"QUICHE_CC_CUBIC"
		end

end
