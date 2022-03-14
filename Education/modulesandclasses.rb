# Lesson 1 Week 5

puts 'stir coffee'
# Method to add sugar
def add_sugar(numteaspoons)
  numteaspoons.times do
    puts 'Get a teaspoon of sugar'
    puts 'Drop sugar into coffee'
  end
end

# Method to stir coffee
def stir
  puts 'Stir Coffee'
end

add_sugar(3)
