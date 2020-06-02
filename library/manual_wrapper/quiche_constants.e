class QUICHE_CONSTANTS


feature -- Access


	QUICHE_PROTOCOL_VERSION: INTEGER
			-- The current QUIC wire version.
		external
			"C inline use <quiche.h>"
		alias
			"QUICHE_PROTOCOL_VERSION"
		end

	QUICHE_MAX_CONN_ID_LEN: INTEGER
			-- The maximum length of a connection ID.
		external
			"C inline use <quiche.h>"
		alias
			"QUICHE_MAX_CONN_ID_LEN"
		end


	QUICHE_MIN_CLIENT_INITIAL_LEN: INTEGER
			-- The minimum length of Initial packets sent by a client.
		external
			"C inline use <quiche.h>"
		alias
			"QUICHE_MIN_CLIENT_INITIAL_LEN"
		end

end
