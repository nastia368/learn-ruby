# Сделать хеш, содеращий месяцы и количество дней в месяце. В цикле выводить те месяцы, у которых количество дней ровно 30
puts "Сделать хеш, содеращий месяцы и количество дней в месяце. В цикле выводить те месяцы, у которых количество дней ровно 30"
months = { 'January' => 31, 'February' => 28, 'March' => 31, 'April' => 30, 
			'May' => 31, 'June' => 30, 'July' => 31, 'August' => 31, 
			'September' => 30, 'October' => 31, 'November' => 30, 'December' => 31}
months.each do |month, day|
	if day == 30 
		puts month
	end
end


# Заполнить массив числами от 10 до 100 с шагом 5
puts "\n\n Заполнить массив числами от 10 до 100 с шагом 5"
temp = (10..100).to_a
new_array = []
index = 0 

while index < 100 do
	new_array.push(temp[index])
	index += 5
end

str = ''
new_array.each {|item| str += "#{item} "}
puts str


# Заполнить массив числами фибоначчи до 100
puts "\n\n Заполнить массив числами фибоначчи до 100"
fibonacci_arr = [0, 1]
index = 1
sum = fibonacci_arr[0] + fibonacci_arr[1]

until sum > 100 do
	fibonacci_arr.push(sum)
	index += 1
	sum = fibonacci_arr[index] + fibonacci_arr[index-1]
end

str = ''
fibonacci_arr.each {|item| str += "#{item} "}
puts str


# Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
puts "\n\n Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1)."
alphabet = ('а'..'я').to_a
hash = { 'а' => 0, 'е' => 0, 'и' => 0, 'о' => 0, 'у' => 0, 'э' => 0, 'ю' => 0, 'я' => 0}

hash.each do |key, value|
	hash[key] = alphabet.find_index(key) + 1
end

puts hash


# Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя). 
# Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным
puts "\n\n Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя). Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным"

years = { "январь" => 31, "февраль" => 28, "март" => 31, "апрель" => 30, 
			"май" => 31, "июнь" => 30, "июль" => 31, "август" => 31, 
			"сентябрь" => 30, "октябрь" => 31, "ноябрь" => 30, "декабрь" => 31}
# високосный год
leap_year = { "январь" => 31, "февраль" => 29, "март" => 31, "апрель" => 30, 
			"май" => 31, "июнь" => 30, "июль" => 31, "август" => 31, 
			"сентябрь" => 30, "октябрь" => 31, "ноябрь" => 30, "декабрь" => 31}

tmp = (1900..2050).to_a
leap_years = []
index = 0 

while index <= tmp.size do
	leap_years.push(tmp[index])
	index += 4
end


day = 0
until (day > 0 && day < 32) do
	puts "Введите число (1 - 31):"
	day = gets.to_i
end

month = ""
until years.has_key?(month) do
	puts "Введите месяц (на русском с маленькой буквы):"
	month = gets.chomp
end

year = 0
until (year >= 1900 && year <= 2050) do
	puts "Введите год (1900 - 2050):"
	year = gets.to_i
end

# выбор необходимого хеша по году (високосный / не вмсокосный)
hash_year = years
hash_year = leap_year if leap_years.include?(year)

count = 0
# посчет дней предыдущих месяцев
hash_year.each do |key, value|
	if key != month
		count += value
	else
		break
	end	
end

# подсчет дней в текущем месяце
count += day


puts "Порядковый номер даты: #{count}"

