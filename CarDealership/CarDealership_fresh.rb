puts "Welcome to the best Dealership in the land!".center(80, "*")
car_stock = 5
puts "We have #{car_stock} vehicles currently in store, and ready to peruse.".center(80)

puts "\nFirst, choose a friendly salesperson to help you with your selection."

def sales_intro(name, cars, discount, quota = 5)
	puts "\n*****\n Hi! I'm #{name.capitalize}. I've sold #{cars} cars this month, and can offer you a $#{"%.2f" % discount} discount off of your vehicle selection in order to meet my #{quota} this month. \n"
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
puts "\n \t Jeep Wrangler"

def car_spec (year, make, model, color, feature1, feature2, price)
	puts "\n The #{year} #{make} #{model} comes in a lovely #{color} color, and features #{feature1} and #{feature2} for the bargain price of $#{%.2f % price}."
end