# frozen_string_literal: true

# Class vehicle
class Vehicle
  attr_reader :model, :make, :odometer

  @@count = 0

  def initialize(make, model)
    @odometer = 0
    @make = make || "MG"
    @model = model
  end

  # # Getter
  # def model
  #   return @model
  # end

  def speak
    puts "Hello!"
  end
end

my_car = Vehicle.new("Ford", "Falcon")
second_car = Vehicle.new("Holden", "Commodore")
p my_car.make
p second_car
