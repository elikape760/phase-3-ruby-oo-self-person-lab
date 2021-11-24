require 'pry'
class Person

    attr_reader :name, :happieness, :hygiene
    attr_accessor :bank_account

    def intialize(name)
        @name = name
        @bank_account = 25
        @happieness = 8
        @hygiene = 8
    end

    def happieness= (value)
        if value > 10
            @happieness = 10 
        elsif value < 0
            @happieness = 0
        else
            @happieness = value
        end
    end

    def hygiene= (value)
        if value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        else
            @hygiene = value
        end
    end

    def clean?
        hygiene > 7
    end

    def happy?
        happieness > 7
    end

    def get_paid(amount)
        self.bank_account = amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "🎵 Rub-a-dub just relaxing in the tub 🎶"    
    end

    def work_out
        self.hygiene -= 3
        self.happieness += 2
        "🎶 another one butes the dust 🎵"
    end

    def call_friend(friend)
        self.happieness += 3
        reese.happieness += 3
        "Hi #{friend.name}! its #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happieness -= 2
            friend.happieness -= 2
            "blah blah blah"
        elsif "weather"
             self.happieness += 1
             friend.happieness += 1
             "blah blah blah"
        else 
             "blah blah blah"
        end
     end

end

dom = Person.new("DOM")
reese = Person.new("reese")



binding.pry