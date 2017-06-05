require 'mysql2'
config ={
	:db =>{
		:host =>"localhost",
		:username => "root",
		:password => "root",
		:database => "school"
	}


}

#client = Mysql2::Client.new(config[:db])
#client.query("SELECT*FROM people WHERE id=1"
	).each do|row|