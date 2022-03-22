# frozen_string_literal: true

def divide(num1, num2)
    puts "#{num1} divided by #{num2} is #{num1 / num2}"
end

begin
    puts "Enter two integers:"
    num1 = gets.chomp.to_i
    num2 = gets.chomp.to_i
    divide(num1, num2)
rescue ZeroDivisionError
    puts "Cannot divide by zero!"
rescue Interrupt
    puts "You ended the program"
end
