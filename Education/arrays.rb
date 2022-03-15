#  Shopping List activity from Coder Academy ED
def shopping
  shopping_list = []
  shopping_list.push('sugar', 'milk', 'coffee', 'bananas', 'chocolate')
  updated_shopping_list = shopping_list.clone
  updated_shopping_list.delete_at(1)
  updated_shopping_list.insert(3, 'bread')

  #  puts shopping_list
  puts updated_shopping_list
  puts shopping_list
  puts shopping_list.shuffle
  puts updated_shopping_list.shuffle
end

puts 'What is the number to search for?'
# number = gets.chomp.to_i

numbers = [4, 5, 3, -7, 20, 0, 5]

# Part 1: Your code here

def find_num(number, numbers)
  if !numbers.index(number).nil?
    puts 'Found in array'
  else
    puts 'Not found in array'
  end
end

# Part 2: Your code here (comment out your part 1 solution before you test this solution)

def find_num2(number, numbers)
  bool = false
  numbers.each do |item|
    if number == item
      puts 'Found in array'
      bool = true
    end
  end
  puts 'Not found in array' if bool != true
end

# find_num(number, numbers)
# find_num2(number, numbers)

names = %w[lin nandini carl zeb janel varsha lavanya]

def name_in_array?(name, names)
  if !names.index(name).nil?
    puts 'Found in array'
  else
    puts 'Not found in array'
  end
end

name_in_array?('Ben', names)
