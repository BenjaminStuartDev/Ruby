# frozen_string_literal: true

#  Step 1
arr = (2..100).to_a

#  Step 2
puts "primes in order are: "

#  Step 3
i = 1

#  Step 4
while arr.length.positive?
    current_prime = arr[0]
    p "#{i}. #{current_prime}" # Step 5
    arr.reject! { |item| (item % current_prime).zero? } # Step 6
    i += 1  # step 7
end
