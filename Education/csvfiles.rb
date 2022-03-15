# frozen_string_literal: true

require 'csv'

# data = CSV.read('csvfiles.csv', headers: true)
# data.each do |person|
#     puts "#{person['name']} is #{person['age']} years old."
# end

CSV.open('csvfiles.csv', 'a') do |csv|
    csv << ['Steve', 12, 'male']
    csv << ['Jane', 21, 'female']
end
