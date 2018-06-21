def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card_val = 1 + rand(11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  sum
end

def hit?(number)
  # code hit? here
  prompt_user
  answer = get_user_input
  
  if answer == 'h'
    number += deal_card
    elsif answer != 'h' && answer != 's'
    invalid_command
    prompt_user
  end
  
  number
end

def invalid_command
  # code invalid_command here
  puts "Please enter a vaid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  number = initial_round
  
  until number > 21 do
    number = hit?(number)
    display_card_total(number)
  end
end_game(number)
end
    
