note
	description: "Summary description for {QUICHE_FUNCTIONS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	QUICHE_FUNCTIONS

inherit

	QUICHE_FUNCTIONS_API
		rename
			quiche_config_new as quiche_config_new_api
		end


feature -- Access

	quiche_config_new (version: INTEGER): detachable CONFIG_STRUCT_API
		local
			l_ptr: POINTER
		do
			l_ptr := quiche_config_new_api (version)
			if l_ptr /= default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			instance_free: class
		end



end
