class Player
   def initialize(choice)
      @my_choice = choice
   end
   def choice
     return @my_choice
   end
   def ChangeChoice(new)
     @my_choice = new
   end
end

Choices = {
  1 => "rock",
  2 => "paper",
  3 => "scissors"
}

def Restart()
  $ai.ChangeChoice(Choices[rand 1..3])
  puts "Ai chose " + $ai.choice
  puts
  puts "Rock, Paper, or Scissors?"
  print "Choice:"
  $me.ChangeChoice(gets.chomp())
  puts
  Checker()
end

def Decide()
  puts
  if ($me.choice == "rock" && $ai.choice == "scissors") || ($me.choice == "paper" && $ai.choice == "rock") || ($me.choice == "scissors" && $ai.choice == "paper")
    puts "You win!"
  elsif $me.choice == $ai.choice
    puts "Tie Game!"
  else
    puts "You lose!"
  end
  Restart()
end

def Checker()
  case $me.choice
  when "rock"
    puts "rock, okay idiot"
  when "paper"
    puts "paper, good choice, for a fuckin retard"
  when "scissors"
    puts "scissors, the weapon of gay fags"
  else
    puts "choose a fucking option buddy"
    NewChoice()
    return
  end
  Decide()
end

def NewChoice()
  puts "Rock, Paper, or Scissors"
  print "Choice:"
  $me.ChangeChoice(gets.chomp())
  puts
  Checker()
end

def Game()
  $ai = Player.new(Choices[rand 1..3])
  puts "Ai chose " + $ai.choice
  puts
  puts "Rock, Paper, or Scissors?"
  print "Choice:"
  $me = Player.new(gets.chomp())
  puts
  Checker()
end

Game()
