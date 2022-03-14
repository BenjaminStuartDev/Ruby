# Lesson 1 Week 5

# Method to add sugar
def add_sugar(num_teaspoons)
  num_teaspoons.times do
    puts 'Get a teaspoon of sugar'
    puts 'Drop sugar into coffee'
  end
end

#  Method to stir coffee
def stir
  puts 'Stir Coffee'
end

# Method that returns a user input for numb of sugars.
def get_sugars
  puts 'How many sugars?'
  gets.chomp.to_i
end

def boil_water
  puts 'Fill Saucepan with water'
  puts 'Place saucepan on stove'
  puts 'Bring water to boil'
end

def print_heading(dish_name)
  puts '_' * 20
  puts "How to cook #{dish_name}"
  puts '_' * 20
end

def cook_pasta
  print_heading('pasta')
  boil_water
  puts 'Add salt'
  puts 'Add pasta'
  puts 'Cook for 5 mins'
end

def cook_rice
  print_heading('rice')
  boil_water
  puts 'Add rice'
  puts 'Cook for 10 mins'
end

cook_pasta
cook_rice
