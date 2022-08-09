# def time
#     current_time = Time.new
#     current_time.strftime("%I:%M:%S")
# end

# def say_hello(name, health=100)
#     "I'm #{name.capitalize} with a health of #{health} as of #{time}"
# end

# puts say_hello("larry", 60)
# puts say_hello("curly", 125)
# puts say_hello("moe")
# puts say_hello("shemp", 90)

class Player

    def initialize(name, health=100)
        @name = name.capitalize
        @health = health
    end

    attr_accessor :name
    attr_reader :health

    def score 
        @name.length + @health
    end
    def to_s
        "I'm #{@name} with a health of #{@health} and a score of #{score}"
    end
    def w00t
        @health += 15
        puts "#{@name} got w00ted!"
    end
    def blam
        @health -= 10
        puts "#{@name} got blammed!"
    end

end

player1 = Player.new("moe")
puts player1

player2 = Player.new("larry", 60)
puts player2

player3 = Player.new("curly", 125)
puts player3
player3.blam
puts player3
player3.w00t
puts player3