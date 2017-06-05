require 'yaml'
require 'mysql2'
require_relative 'classes'

config = YAML.load_file("config.yml")
client = Mysql2::Client.new(config["db"])
data=ARGV[0]

sql_command=ask_class(data)
result = client.query(sql_command)
case result.count
	when 0
		
		result=client.query(class_list)
		puts "Sorry, couldn't find information about \"#{data}\" class.\nThe school has only #{result.count} classes:"
		
		show_groups(result)
	else 
		
		show_result(result)	
end
