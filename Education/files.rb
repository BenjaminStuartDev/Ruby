# frozen_string_literal: true

# file = File.open('files.txt')
# data = file.readlines.map { |x| x.strip }
# p data

# index = 1
# File.foreach('files.txt') do |line|
#     puts "#{index}. #{line.strip}"
#     index += 1
# end

file = File.open('files.txt', 'a')
file.puts "orange juice"
file.puts "vegemite"
file.close
