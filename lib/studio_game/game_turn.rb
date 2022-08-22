require_relative 'player'
require_relative 'die'
require_relative 'loaded_die'
require_relative 'treasure_trove'

module StudioGame
  module GameTurn
      def self.take_turn(player)
          die = Die.new
          # number_rolled = die.roll
          # **if conditional for game play**
              # if number_rolled < 3
              #     player.blam
              # elsif number_rolled > 4
              #     player.w00t
              # else
              #     puts "#{player.name} was skipped."
              # end

          # **when clause for game play**
          case die.roll
          when 1..2
            player.blam
          when 3..4
            puts "#{player.name} was skipped."
          else
            player.w00t
          end

          treasure = TreasureTrove.random
          player.found_treasure(treasure)
      end
  end
end

if __FILE__ == $0
  player = StudioGame::Player.new("curly", 125)
  StudioGame::GameTurn.take_turn(player)
end