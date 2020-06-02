note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class QUICHE_STATS_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	recv: INTEGER
			-- Access member `recv`
		require
			exists: exists
		do
			Result := c_recv (item)
		ensure
			result_correct: Result = c_recv (item)
		end

	set_recv (a_value: INTEGER) 
			-- Change the value of member `recv` to `a_value`.
		require
			exists: exists
		do
			set_c_recv (item, a_value)
		ensure
			recv_set: a_value = recv
		end

	sent: INTEGER
			-- Access member `sent`
		require
			exists: exists
		do
			Result := c_sent (item)
		ensure
			result_correct: Result = c_sent (item)
		end

	set_sent (a_value: INTEGER) 
			-- Change the value of member `sent` to `a_value`.
		require
			exists: exists
		do
			set_c_sent (item, a_value)
		ensure
			sent_set: a_value = sent
		end

	lost: INTEGER
			-- Access member `lost`
		require
			exists: exists
		do
			Result := c_lost (item)
		ensure
			result_correct: Result = c_lost (item)
		end

	set_lost (a_value: INTEGER) 
			-- Change the value of member `lost` to `a_value`.
		require
			exists: exists
		do
			set_c_lost (item, a_value)
		ensure
			lost_set: a_value = lost
		end

	rtt: INTEGER
			-- Access member `rtt`
		require
			exists: exists
		do
			Result := c_rtt (item)
		ensure
			result_correct: Result = c_rtt (item)
		end

	set_rtt (a_value: INTEGER) 
			-- Change the value of member `rtt` to `a_value`.
		require
			exists: exists
		do
			set_c_rtt (item, a_value)
		ensure
			rtt_set: a_value = rtt
		end

	cwnd: INTEGER
			-- Access member `cwnd`
		require
			exists: exists
		do
			Result := c_cwnd (item)
		ensure
			result_correct: Result = c_cwnd (item)
		end

	set_cwnd (a_value: INTEGER) 
			-- Change the value of member `cwnd` to `a_value`.
		require
			exists: exists
		do
			set_c_cwnd (item, a_value)
		ensure
			cwnd_set: a_value = cwnd
		end

	delivery_rate: INTEGER
			-- Access member `delivery_rate`
		require
			exists: exists
		do
			Result := c_delivery_rate (item)
		ensure
			result_correct: Result = c_delivery_rate (item)
		end

	set_delivery_rate (a_value: INTEGER) 
			-- Change the value of member `delivery_rate` to `a_value`.
		require
			exists: exists
		do
			set_c_delivery_rate (item, a_value)
		ensure
			delivery_rate_set: a_value = delivery_rate
		end

feature {NONE} -- Implementation wrapper for struct quiche_stats

	sizeof_external: INTEGER 
		external
			"C inline use <eif_quiche.h>"
		alias
			"sizeof(quiche_stats)"
		end

	c_recv (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_quiche.h>"
		alias
			"[
				((quiche_stats*)$an_item)->recv
			]"
		end

	set_c_recv (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_quiche.h>"
		alias
			"[
				((quiche_stats*)$an_item)->recv =  (size_t)$a_value
			]"
		ensure
			recv_set: a_value = c_recv (an_item)
		end

	c_sent (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_quiche.h>"
		alias
			"[
				((quiche_stats*)$an_item)->sent
			]"
		end

	set_c_sent (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_quiche.h>"
		alias
			"[
				((quiche_stats*)$an_item)->sent =  (size_t)$a_value
			]"
		ensure
			sent_set: a_value = c_sent (an_item)
		end

	c_lost (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_quiche.h>"
		alias
			"[
				((quiche_stats*)$an_item)->lost
			]"
		end

	set_c_lost (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_quiche.h>"
		alias
			"[
				((quiche_stats*)$an_item)->lost =  (size_t)$a_value
			]"
		ensure
			lost_set: a_value = c_lost (an_item)
		end

	c_rtt (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_quiche.h>"
		alias
			"[
				((quiche_stats*)$an_item)->rtt
			]"
		end

	set_c_rtt (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_quiche.h>"
		alias
			"[
				((quiche_stats*)$an_item)->rtt =  (uint64_t)$a_value
			]"
		ensure
			rtt_set: a_value = c_rtt (an_item)
		end

	c_cwnd (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_quiche.h>"
		alias
			"[
				((quiche_stats*)$an_item)->cwnd
			]"
		end

	set_c_cwnd (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_quiche.h>"
		alias
			"[
				((quiche_stats*)$an_item)->cwnd =  (size_t)$a_value
			]"
		ensure
			cwnd_set: a_value = c_cwnd (an_item)
		end

	c_delivery_rate (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_quiche.h>"
		alias
			"[
				((quiche_stats*)$an_item)->delivery_rate
			]"
		end

	set_c_delivery_rate (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_quiche.h>"
		alias
			"[
				((quiche_stats*)$an_item)->delivery_rate =  (uint64_t)$a_value
			]"
		ensure
			delivery_rate_set: a_value = c_delivery_rate (an_item)
		end

end