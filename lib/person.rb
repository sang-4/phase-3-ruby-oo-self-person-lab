require 'pry'
# your code goes here

class Person
    attr_accessor :bank_account, :hygiene
    attr_reader :name, :happiness

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness
        if @happiness < 0
            @happiness = 0
        elsif @happiness > 10
            @happiness = 10
    end

    def happy?
        self.happiness > 7
    end
    
    def hygiene=(hygiene)
            @hygiene = hygiene
        if @hygiene < 0
            @hygiene = 0
        elsif @hygiene > 10
            @hygiene = 10
    end

    def clean?
        self.hygiene > 7
    end 

    def get_paid(amount)
        self.bank_account += 100
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        '♪ another one bites the dust ♫'
    end
    
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(p1, topic)
        if topic == 'politics'
            self.happiness -= 2
            p1.happiness -=2
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness += 1
            p1.happiness += 1
            'blah blah sun blah rain'
        else 
            'blah blah blah blah blah'
        end

        end

     end

    end
end
# p1 = Person.new("Sang")