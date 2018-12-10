min = 1
max = 1000
guess = 501
tries = 0

puts "Think of a number between 1 and 100. I will be able to guess in 10 tries or less."
puts "Is your number #{guess}? (y)es, (h)igher, or (l)ower."


while true
  answer = gets.chomp
lookup = [
  'h', 
  'l', 
  'y'
]
if !lookup.include?(answer)
  puts "incorrect input, try again. please use (y)es, (h)igher, or (l)ower"
end 
  if answer == "h"
    min = guess + 1
    guess = ((max - min) / 2) + min
    puts "Is your answer #{guess}?"
    tries += 1
  end
  if answer == "l"
    max = guess -1
    guess = ((max - min) / 2) + min
    puts "Is your answer #{guess}?"
    tries += 1
  end 
  if answer == "y" 
    puts "Answer guessed in #{tries} tries"
    sleep 5
    system("clear")
    system("ruby main.rb")
  break
  end
end 

