def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random_number = rand(1..11)
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def display_card_total(current_total)
  puts "Your cards add up to #{current_total}"
end

def get_user_input
  gets.chomp
end

def invalid_command
  puts"Please enter a valid command"
end



def initial_round
  initial_total = deal_card+deal_card
  display_card_total(initial_total)
  return initial_total
end 

def hit?(current_total)
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    return current_total+=deal_card
  elsif user_input == 's'
    return current_total
  else
    invalid_command
    prompt_user
    return current_total
  end
end

def end_game(current_total)
  puts "Sorry, you hit #{current_total}. Thanks for playing!"
end


def runner
  welcome
  current_total = initial_round
  until current_total >=21
  current_total = hit?(current_total)
  display_card_total(current_total)
  end 
  end_game(current_total)
end
    
