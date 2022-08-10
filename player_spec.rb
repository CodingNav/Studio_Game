require_relative "player"

describe Player do

    before do
        $stdout = StringIO.new
        
        @initial_health = 100
        @player = Player.new("moe", @initial_health)
    end
    
    it "has a capitalized name" do
        expect(@player.name).to eq("Moe")
    end

    it "has an initial health" do
        @player.health.should == 100
    end

    it "has a string representation" do
        @player.to_s.should == "I'm Moe with a health of 100 and a score of 103"
    end

    it "computes a score as the sum of its health and length of name" do
        @player.score.should == (100 + 3)
    end

    it "increases health by 15 when w00ted" do
        @player.w00t
        
        @player.health.should == @initial_health + 15
    end

    it "decreases health by 10 when blammed" do 
        @player.blam
        
        @player.health.should == @initial_health - 10
    end

    context "created with a default health" do
        before do
            @player = Player.new("moe")
        end

        it "has a health of 100" do
            @player.health.should == 100
        end
    end
end