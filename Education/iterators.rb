# Lesson 2 Week 5
def lesson2week5
    arr = [12, 45, 31, 5, 21, 16, 60]
    names = %w[matt jim mary sally]

    # arr2 = []
    # arr.each_with_index { |num, index| arr2[index] = num * 2 }

    arr2 = arr.map { |num| num * 2 }

    p arr2
    p names.map { |name| name.capitalize }

    found = names.find { |name| name == "ffgdfdfg" }
    p found
end

def count_letters(word)
    letter_count = {}
    word.chars.each do |char|
        next unless /[a-zA-Z]/ =~ char

        letter_count[char] = 0 unless letter_count.key?(char)
        letter_count[char] += 1
    end
    return letter_count
end

# puts count_letters("!!$#%@^hello world")

def book_keeper
    books_array = []
    # Your code here, start by adding some books to the books_array
    3.times do
        books_array << { Title: 'Book Title', Author: 'Book Author', Year: 'Book Year' }
    end
    return books_array
end

# Outputting the return value of the book_keeper method
# puts book_keeper

def square_numbers_of_an_array(array_of_numbers)
  array_squared = []
  array_of_numbers.each do |num|
      num **= 2
      array_squared << num
  end
  return array_squared
end
p square_numbers_of_an_array([1, 2, 3, 4, 5])
