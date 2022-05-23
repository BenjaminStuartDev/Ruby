# binary search that returns the index of the number being searched.
# @param num [Int]
# @param array [Array]
#
# @return An Int for the index/position of the elemenent num in array or nil if it does not exist
def binary_search(num, array)
    left_index = 0
    right_index = array.length - 1
    return array[0] == num ? 0 : nil if array.length.zero?

    while left_index < right_index
        middle_index = (left_index + right_index) / 2
        middle_num = array[middle_index]
        return middle_index if middle_num == num

        if middle_num < num
            right_index = middle_index
        else
            left_index = middle_index
        end
    end
    nil
end

# linear search that returns the index of the number being searched.
# @param num [Int]
# @param array [Array]
#
# @return An Int for the index/position of the elemenent num in array or nil if it does not exist
def linear_search(num, array)
  array.each_with_index do |el, i|
    return i if el == num
  end
  nil
end

# Selection Sort returns the sorted array.
# @param array [Array]
#
# @return a sorted Array containing the elements from @param array
def selection_sort(array)
    array_length = array.length - 1
    array_length.times do |i|
      min_index = i
      ((i + 1)..array_length).each do |index|
        min_index = index if array[index] < array[min_index]
      end
      array[i], array[min_index] = array[min_index], array[i] if min_index != i
    end
    array
end

# bubble Sort returns the sorted array.
# @param array [Array]
#
# @return a sorted Array containing the elements from @param array
def bubble_sort(array)
  return array if array_length <= 1

  loop do
    swapped = false

    array.length.times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break unless swapped
  end
  array
end
