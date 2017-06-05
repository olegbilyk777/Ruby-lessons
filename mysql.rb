require 'mysql2'
#require 'timeout'

# Should never exceed worst case 3.5 secs across all 20 threads
=begin Timeout.timeout(3.5) do
  20.times.map do
    Thread.new do
      overhead = rand(3)
      puts ">> thread #{Thread.current.object_id} query, #{overhead} sec overhead"
      # 3 second overhead per query
      Mysql2::Client.new(:host => "localhost", :username => "root").query("SELECT sleep(#{overhead}) as result")
      puts "<< thread #{Thread.current.object_id} result, #{overhead} sec overhead"
    end
  end.each(&:join)
=end
Thread.new do
puts ">> thread #{Thread.current.object_id} query"
mariaDb = Mysql2::Client.new(:host => "localhost", :username => "oleg",:password => "",:database =>"school")

 mariaDb.query("select * from person as result")
  puts "<< thread #{Thread.current.object_id} result"


  end