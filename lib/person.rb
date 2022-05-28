# your code goes here
class Person

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene

    end
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def happiness=(new_happiness)
        new_happiness = 10 if new_happiness > 10
        new_happiness = 0 if new_happiness < 0
        @happiness = new_happiness
    end
    
    def hygiene=(new_hygiene)
        new_hygiene = 10 if new_hygiene > 10
        new_hygiene = 0 if new_hygiene < 0
        @hygiene = new_hygiene
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
 
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            'blah blah partisan blah lobbyist' 
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end

    end

end