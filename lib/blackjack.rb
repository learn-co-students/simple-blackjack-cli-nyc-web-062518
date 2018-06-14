def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1+card2)
  return card1 + card2
  
end

def hit?(number)
  # code hit? here
  
  prompt_user
  input = get_user_input
  if input == 'h'
    var = deal_card
    number = number + var
  elsif input == 's'
    number
  else
    invalid_command
    prompt_user
  end
  
  number
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  
  welcome
  number = initial_round
  until number >= 21 do
    number = hit?(number)
    display_card_total(number)
  end
  end_game(number)
end
    
