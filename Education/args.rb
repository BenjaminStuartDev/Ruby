# frozen_string_literal: true
# Lesson 2 week 5

p ARGV

def add(a, b)
  return a + b
end

def subtract(a, b)
    return a - b
end

num1 = ARGV[0].to_f
num2 = ARGV[1].to_f

case ARGV[2]
when "+"
    p add(num1, num2)
when "-"
    p subtract(num1, num2)
else
    p "I don't know that operation!"
end
