students = []

puts "welcome to student info generator".upcase
puts

loop do
  student_info = {}

  puts "new student".upcase

  print "What is your name: "
  student_info[:name] = gets.chomp.upcase

  print "What is your age: "
  student_info[:age] = gets.chomp

  print "What is your favorite language: "
  student_info[:fav_lang] = gets.chomp

  print "What is your favorite food: "
  student_info[:foods] = gets.chomp

  puts
  puts "Add additional student? (y/n) "
  response = gets.chomp

  students.push(student_info)
  break if response.downcase == 'n'
end

puts "STUDENTS"
puts "-" * 20
sorted_students = students.sort_by { |x| x[:name] }
sorted_students.each do |student|
  puts student[:name]
  puts "Student is #{student[:age]}"
  puts "Favorite Language: #{student[:fav_lang]}"
  puts "Fav Food: #{student[:foods]}"
  puts "Fav Drink: #{student.fetch(:fav_drink, "Water")}"
  puts "-" * 20
end
