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
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        #binding.pry
        return "♪ another one bites the dust ♫"
        
    end
    
    
    def call_friend(friend)
        self.happiness  = @happiness + 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"   
    end
   #binding.pry

    def start_conversation(person,topic)
        if topic == "politics"
            person.happiness  -= 2
            self.happiness  -=2 
            return "blah blah partisan blah lobbyist"
        elsif topic  == "weather"
            person.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end