# frozen_string_literal: true

class InvalidNameError < StandardError
  def message
    return 'Name must not be empty'
  end
end

def get_name
  print 'Enter your name: '
  name = gets.strip
  raise(InvalidNameError, 'Name must not be empty') if name.empty?

  name
end

begin
  foo = get_name
  puts "The name is #{foo}"
rescue InvalidNameError => e
  puts e.message
  retry
end
