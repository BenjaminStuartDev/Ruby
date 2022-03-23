# frozen_string_literal: true

# Class for a person
class Person
    attr_reader :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def adult?
        return @age >= 18
    end
end
