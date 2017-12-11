puts "Как тебя зовут?"
name = gets.chomp

puts "Какой у тебя рост (в сантиметрах)?"
height = gets.chomp

perfect_weight = height.to_i - 110

if perfect_weight > 0
	puts "#{name}, твой идеальный вес #{perfect_weight}!"
else
	puts "Ваш вес уже оптимальный"
end		