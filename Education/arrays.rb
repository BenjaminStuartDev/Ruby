#  Shopping List activity from Coder Academy ED
shopping_list = []
shopping_list.push('sugar', 'milk', 'coffee', 'bananas', 'chocolate')
updated_shopping_list = shopping_list.clone
updated_shopping_list.delete_at(1)
updated_shopping_list.insert(3, 'bread')

#  puts shopping_list

puts updated_shopping_list
