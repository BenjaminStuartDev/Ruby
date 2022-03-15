#frozen_string_literal true

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

# Method that *returns* a user input for numb of sugars.
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

# pass in an ingredients array and iterate over the array adding each ingredient.
def cook(food_name:, cook_time:, ingredients: {}) # ingredients is optional
  print_heading(food_name.capitalize)
  boil_water
  ingredients.each do |item, qty|
    puts "Add #{qty} of #{item}"
  end
  puts "Cook for #{cook_time} mins"
end

# cook(food_name: 'rice', cook_time: 5, ingredients: { 'rice' => '2 cups' })
# cook('pasta', 15, { 'salt' => '10g', 'pasta' => '250g' })

arr = [1, 2, 3, 4, 5]


def ca_each(arr)
  index = 0
  while index < arr.length
      yield(arr[index])
      # puts arr[index] ** 2
      index += 1
  end
end

ca_each(arr) do |item|
  puts item ** 2
end

