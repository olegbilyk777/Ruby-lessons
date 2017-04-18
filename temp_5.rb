print 'Input temperature and scale (C or F): '

str = gets

exit if str.nil? || str.empty?

str.chomp!

temp, scale = str.split(' ')

abort "#{temp} invalid number." if temp !~ /-?\d+/

temp = temp.to_f

case scale

when 'C', 'c'

  f = 1.8 * temp + 32

when 'F', 'f'

  c = (5.0 / 9.0) * (temp - 32)

else

  abort 'You must specify C or F'

end

if f.nil?

  print "#{c} degrees C\n"

elsif

  print "#{f} degrees F\n"

end