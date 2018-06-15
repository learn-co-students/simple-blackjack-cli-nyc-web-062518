def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
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
  answer = gets.chomp
end

def end_game(number)
  # code #end_game here
  card_total = number
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round()
  # code #initial_round here
card_total = deal_card + deal_card
display_card_total(card_total)
return card_total
end

def hit?(number)
  # code hit? here
  prompt_user
  answer = get_user_input


  if answer == "h"
     number = number +deal_card
     return number

  elsif answer == "s"
   return number

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
  total_number = initial_round
  until total_number >= 21
  total_number = hit?(total_number)
    display_card_total(total_number)
  end
end_game(total_number)
end
