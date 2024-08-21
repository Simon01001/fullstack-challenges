require_relative "croupier"
require_relative 'black_jack'

# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card

puts "Welcome to Black Jack"
puts "Banks score is: #{pick_bank_score}"
puts "Choose yes to draw card, choose no to finish game"

player_score = 0
bank_score = pick_bank_score
input = gets.chomp
while true
  input = gets.chomp
  if input == "yes"
    player_score += pick_player_card().to_i
    p "#{state_of_the_game(player_score, bank_score)}"
    if player_score > 21
      p "You lost!"
      break
    end
  elsif input == "no"
    p "#{end_game_message(player_score, bank_score)}"
    break
  end
end
