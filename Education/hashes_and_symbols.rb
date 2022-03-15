# Activity 1
def activity1
  fruits = { banana: 2, avocado: 3, peach: 5 }

  veggies = { carrot: 1.75, celery: 2.75, kale: 4 }

  # Your code here

  inventory = {}
  inventory = fruits.merge(inventory)
  inventory = veggies.merge(inventory)
  inventory.each do |key, value|
    puts "Item: #{key} Cost: $#{value}"
  end
end

def full_family
  family = {
    aunts: %w[Jane Jill Beth],
    sisters: %w[Mary Sally Susan],
    brothers: %w[Steve Bob Joe],
    uncles: %w[Frank Rob David]
  }
  # Don't change the code above

  # Part 1: Your code here, start by changing immediate_family
  immediates = %i[sisters brothers]
  immediate_family = []
  immediates.each do |key|
    immediate_family += family[key]
  end

  # Part 2: Make changes to family here
  index = family[:aunts].find_index { |name| name == 'Jill' }
  family[:aunts].delete_at(index)
  family[:uncles] << 'jacob'
  # Don't change the code below
  [family, immediate_family]
end
p full_family
