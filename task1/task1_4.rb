puts "Введите коэффициенты а:"
a = gets.to_f

puts "Введите коэффициенты b:"
b = gets.to_f

puts "Введите коэффициенты c:"
c = gets.to_f

#вычисление дискриминанта
d = b**2 - 4 * a * c
puts "Дискриминант D квадратного уравнения: #{d}"

if (d > 0)
	x = (-b + Math.sqrt(d)) / (2 * a)
	y = (-b - Math.sqrt(d)) / (2 * a)
	puts "Корни уравнения: #{x} и #{y}"
elsif (d == 0)
	x = (-b) / (2 * a)
	puts "Корень уравнения: #{x}"
else
	puts "Корней нет"
end			