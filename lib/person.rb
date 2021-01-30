require 'pry'
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


    def hygiene=(hygiene)
        @hygiene = hygiene
        if @hygiene >=10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end  
    end


    def happiness=(happiness)
        @happiness = happiness
        if @happiness >= 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def happy?
        @happiness > 7 ? true : false  
    end 

    def clean?
         @hygiene > 7 ? true : false
    end

    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        binding.pry
        return "♪ another one bites the dust ♫"
        
    end
    
    
    def call_friend(friend)
        @happiness  += 3
        friend.happiness += 3
        if friend == "Felix"
            return "Hi Felix! It's Stella. How are you?"
        end
    end

    def start_conversation(person,topic)
        if topic.downcase == "politics"
            @happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic.downcase == "weather"
            @happiness += 2
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end