def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total
  # code #display_card_total here
  "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game
  # code #end_game here
  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
    current_card_total = deal_card
    current_card_total += deal_card
    puts display_card_total
    return deal_card + deal_card
end

def hit?
  # code hit? here
  hit?(current_card_value)
  prompt_user
  get_user_input = user_input
  while user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
  until user_input == "h"
    current_card_value += deal_card
  end
  return current_card_value
end

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
  initial_round
  display_card_total
  prompt_user
  get_user_input
  hit?
end
    
