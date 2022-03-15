# Lesson 2 Week 5
arr = [12, 45, 31, 5, 21, 16, 60]
names = %w[matt jim mary sally]

# arr2 = []
# arr.each_with_index { |num, index| arr2[index] = num * 2 }

arr2 = arr.map { |num| num * 2 }

p arr2
p names.map { |name| name.capitalize }

found = names.find { |name| name == "ffgdfdfg" }
p found
