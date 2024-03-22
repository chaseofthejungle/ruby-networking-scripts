# Returns and outputs validation warnings and errors for the current network.

curnet = WSApplication.current_network
values = curnet.validate

puts "Total Errors: #{values.error_count}"
puts "Total Warnings: #{values.warning_count}"
puts ""
puts "Type | PRI | Code | Field | Desc | OID | Obj Type | Info"

values.each do |val|
  puts "#{val.type} - #{val.priority} -#{val.code} - #{val.field} - #{val.field_description}- #{val.object_id} - #{val.object_type} - #{val.message}"
end
