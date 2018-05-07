def welcome
  # code #welcome here
  puts  "Welcome to the Blackjack Table"
end

def deal_card
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
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = 0
  card_total += deal_card
  card_total += deal_card
  display_card_total(card_total)
  print card_total
  card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    card_total += deal_card
  elsif input == "s"
    card_total
  else
    invalid_command
    prompt_user
    get_user_input
    card_total += deal_card
  end
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  print card_total
  until card_total > 21
    card_total += hit?(card_total)
    print card_total
    display_card_total(card_total)
  end
  end_game(card_total)
end