# frozen_string_literal: true

def print_greeting(name)
    puts "Hi, my name is #{name}"
end

def add_three(number)
    return number + 3
end

def get_last_two_names(names)
    return names[-2..-1]
end

def sum_array(numbers)
    total = 0
    numbers.each do |item|
        total += item
    end
    return total
end

# p sum_array([10, 20, -10, 5, 0])

def sum_two_arrays(numbers1, numbers2)
    numbers = numbers1 + numbers2
    total = 0
    numbers.each do |item|
        total += item
    end
    return total
end

def facebook_likes(likers)
    if likers.empty?
        puts "No one likes this"
    elsif likers.length == 1
        puts "#{likers[0]} likes this"
    elsif likers.length == 2
        puts "#{likers[0]} and #{likers[1]} likes this"
    elsif likers.length == 3
        puts "#{likers[0]}, #{likers[1]} and #{likers[2]} like this"
    elsif likers.length > 3
        puts "#{likers[-1]}, #{likers[-2]} and #{likers.length - 2}otheres likes this"
    end
end

