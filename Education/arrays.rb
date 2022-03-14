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
number = gets.chomp.to_i

numbers = [4, 5, 3, -7, 20, 0, 5]

# Part 1: Your code here

def find_num(number, numbers)
  for i in numbers do
    if number == numbers[i]
      puts "Found in array"
      return true
    else
      return false
    end
  end
end

find_num(number, numbers)
# Part 2: Your code here (comment out your part 1 solution before you test this solution)
