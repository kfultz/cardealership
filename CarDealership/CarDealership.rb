puts "Welcome to the best Dealership in the land!".center(80, "*")
car_stock = 5
puts "We have #{car_stock} vehicles currently in store, and ready to peruse.".center(80)

puts "\nFirst, choose a friendly salesperson to help you with your selection."

def sales_intro(name, cars, discount, quota = 5)
	puts "\n*****\n Hi! I'm #{name.capitalize}. I've sold #{cars} cars this month, and can offer you a $#{'%.2f' % discount} discount off of your vehicle selection in order to meet my #{quota} this month. \n"
end

sales_intro("mike", 1, 1500, 6)
sales_intro("sally", 7, 200, 8)
sales_intro("tosnelda", 0, 2000)
sales_intro("george", 3, 1000)

puts "\n Which sales person would you like to work with?"
sales_choice = gets.downcase.chomp!
puts "\n Great! #{sales_choice.capitalize!} will be happy to help you!"

puts "#{sales_choice} Says: 'We have 5 amazing vehicles in stock today. Which one would you like to hear about first?"
puts "\n \t 2014 Subaru Forester"
puts "\n \t 2006 Volkswagen Golf"
puts "\n \t 1998 Honda Civic"
puts "\n \t 1992 Mercury Mountaineer"
puts "\n \t 1980 Jeep Wrangler"

def car_spec (year, make, model, color, feature1, feature2, price)
	puts "\n The #{year} #{make} #{model} comes in a lovely #{color} color, and features #{feature1} and #{feature2} for the bargain price of $#{'%.2f' % price}."
end

first_car = gets.downcase.chomp!


if first_car.include?("subaru") == true || first_car.include?("forester")== true
	puts "\n Excellent choice!"
	car_spec(2014, "Subaru", "Forester", "red", "power windows", "a sunroof", 10000)
elsif first_car.include?("volkswagen") == true || first_car.include?("golf") == true
	puts "\n Sounds good!"
	car_spec(2006, "Volkswagen", "Golf", "black", "a radio", "brakes", 7000)
elsif first_car.include?("honda") == true || first_car.include?("civic") == true
	puts "\n Sure thing!"
	car_spec(1998, "Honda", "Civic", "green", "a bumper", "power windows", 2000)
elsif first_car.include?("mercury") == true || first_car.include?("mountaineer") == true
	puts "\n Are you sure about that?"
	car_spec(1992, "Mercury", "Mountaineer", "black", "a steering wheel", "a bumper", 1000)
elsif first_car.include?("jeep") == true || first_car.include?("wrangler") == true
	puts "\n Well, that's practically a classic!"
	car_spec(1980, "Jeep", "Wrangler", "orange", "a spare tire", "wheels", 1500)
else
	puts "\n I don't think we have that car in stock. Is there a different one you'd like to see?"
end