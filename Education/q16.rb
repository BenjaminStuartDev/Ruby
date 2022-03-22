# frozen_string_literal: true

# Executes the program
def main
  # Greets the user
  puts "Congratulations on making it this far! As part of our hiring criteria we need you to fill out the following skills evaluation:"

  # defines the weightings hash
  weightings = { python: 1, ruby: 2, bash: 4, git: 8, html: 16, tdd: 32, css: 64, javascript: 128 }

  # prompts user for their skills
  skills = get_skills

  # computes user skill total and informs them of their overall score and how they could improve
  skill_total = compute_skills(skills, weightings)
  puts "Your overall coding skill score is #{skill_total} points"
  if skill_total < 255
    improve_score(skills, weightings)
  else
    puts "You achieved a perfect score!"
  end
end

# requires user input to return a populated hash containing the skills of the user
#
# @return skills [Hash]
def get_skills
  skills = {
    python: false,
    ruby: false,
    bash: false,
    git: false,
    html: false,
    tdd: false,
    css: false,
    javascript: false
  }

  # iterators over each key in skills hash and updates based on user input
  skills.each_key do |key|
    answer = nil

    # continues to prompt user for Y/N input
    while answer != 'Y' && answer != 'N'
      print "Are you skilled in #{key}? (Y/N) : "
      answer = gets.chomp.upcase
      puts "Invalid input, please type Y for yes or N for no" unless %w[Y N].include?(answer)
    end

    # updates skills if answer == Y
    next unless answer == 'Y'

    skills[key] = true
  end
  return skills
end

# Calculates the total coding skill score based on the users skills and the weightings.
#
# @param skills [Hash] A hash contining skill (symbol): true/false (boolean)
# @param weightings [Hash] A hash of weightings skill (symbol): weighting (int)
#
# @return skill score total [Integer]
def compute_skills(skills, weightings)
  total = 0
  skills.each_key do |key|
    total += weightings[key] if skills[key] == true
  end
  return total
end

# Displays the skills the user may want to learn and how much each would improve their score.
#
# @param skills [Hash] A hash contining skill (symbol): true/false (boolean)
# @param weightings [Hash] A hash of weightings skill (symbol): weighting (int)
#
# @return nil
def improve_score(skills, weightings)
  skills.each_key do |key|
    puts "Your score could improve by #{weightings[key]} points by learning #{key}." if skills[key] != 1
  end
end

# main function call to execute the program
main
