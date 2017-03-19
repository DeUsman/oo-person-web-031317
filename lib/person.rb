
class Person
attr_reader :name, :hygiene, :happiness
attr_accessor :bank_account 

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
 		@hygiene = 8
  end
  def happiness=(happiness)
    @happiness = happiness
    if (@happiness > 10)
      @happiness = 10
    elsif(@happiness < 0)
      @happiness = 0
    end
  end
    def hygiene=(hygiene)
     @hygiene = hygiene
      if (@hygiene > 10)
        return @hygiene = 10
      elsif (@hygiene < 0)
        return @hygiene = 0
      end
  end
    def happy?
      if(@happiness > 7)
        return true
      else
        return false
      end
    end
    def clean?
      if(@hygiene > 7)
        return true
      else
        return false
      end
    end
    def get_paid(salary)
      @bank_account += salary
      return "all about the benjamins"
    end
    def take_bath
      @hygiene += 4
      self.hygiene=(@hygiene)
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
      @hygiene -= 3
      self.hygiene=(@hygiene)
      self.happiness=(@happiness + 2)
      return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
      friend.happiness += 3
     self.happiness=(@happiness + 3)
     return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person_to_call, topic_to_discuss)
     if(topic_to_discuss == "politics")
       self.happiness=(self.happiness-2)
       person_to_call.happiness=(person_to_call.happiness-2)
       return 'blah blah partisan blah lobbyist'
     elsif ( topic_to_discuss == "weather")
       self.happiness=(self.happiness+1)
       person_to_call.happiness=(person_to_call.happiness+1)
       return 'blah blah sun blah rain'
     else 
       return 'blah blah blah blah blah'
     end
   end
end