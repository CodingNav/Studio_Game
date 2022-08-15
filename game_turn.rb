require_relative 'player'
require_relative 'die'
require_relative 'treasure_trove'

module GameTurn
    def self.take_turn(player)
        die = Die.new
        number_rolled = die.roll
        
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
        puts "#{player.name} found a #{treasure.name} worth #{treasure.points} points."
    end
end