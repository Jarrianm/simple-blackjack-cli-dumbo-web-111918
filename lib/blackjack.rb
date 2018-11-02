def welcome
"Welcome to the Blackjack table."
end

def deal_card
  rand(1..11)
end

def display_card_total (card_total)
puts "Your cards add up to #{card_total}."
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
return gets.chomp
end

def end_game
"Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
new = deal_card + deal_card
display_card_total(new)
new
end

def hit?(next_card_total)
prompt_user
input = get_user_input
if input == "s"
  next_card_total
elsif input == "h"
  deal_card + next_card_total
else
  invalid_command
end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
card_total = initial_round
until card_total >21
  card_total = hit?(card_total)
  display_card_total(card_total)
end
"Sorry, you hit #{card_total}. Thanks for playing."
