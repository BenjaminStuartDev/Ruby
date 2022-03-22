# frozen_string_literal: true

# Class Dog
class Dog
    attr_reader :breed, :age
    attr_accessor :name

    def initialize(name, breed, age)
        @name = name
        @breed = breed
        @age = age
        @walks = []
    end

    def [](index)
        [@name, @breed, @age, @walks][index]
    end

    def []=(index, new_value)
        [@name, @breed, @age, @walks][index]
    end

    def walk(distance_in_kms)
        @walks << distance_in_kms
    end

    def walked_distance
        walked_distance = 0
        @walks.each do |distance_in_kms|
            walked_distance += distance_in_kms
        end
        return walked_distance
    end

    def display_walks
        puts "#{@name} has had #{@walks.length} and walked #{walked_distance} kms today:"
        @walks.each_with_index do |walk, i|
            puts "#{i}. #{walk} km"
        end
    end
end

dog1 = Dog.new("Ollie", "Cavoodle", 10)
func = "name"
dog1.send("#{func}=", "Jack")
