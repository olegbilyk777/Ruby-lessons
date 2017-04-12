puts " Please input temps"

deg=gets.chomp.upcase

value, sign = deg.split(" ")

if sign == 'C'

	puts deg.to_f*1.8 + 32

elsif sign == 'F'

	puts (deg.to_f - 32) / 1.8

else

	puts "WTF is this man?"

end
