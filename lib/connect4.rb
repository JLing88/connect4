require './lib/game.rb'

game = Game.new

puts game.welcome_message

puts "Player, what is your name? "
game.name = gets.chomp

loop until game.game_over == true

end
