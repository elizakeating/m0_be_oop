# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn

    def initialize(name)
        @name = name
        @color = "silver"
    end

    def say(string)
        puts "*~*#{string}*~*"
    end
end

# unicorn1 = Unicorn.new("Harold")
# p unicorn1

# unicorn1.say("sparkly")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire

    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink
        @thirsty = false
    end

end

# vampire1 = Vampire.new("vlad", "cat")
# p vampire1

# vampire2 = Vampire.new("Harold")
# p vampire2

# vampire1.drink
# p vampire1


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon

    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
    end

    def eat(times_eaten)
        if times_eaten >= 4
            @is_hungry = false
        end
    end

end

# dragon1 = Dragon.new("Toothless", "Hiccup", "black")
# p dragon1

# dragon1.eat(0)
# p dragon1

# dragon1.eat(1)
# p dragon1

# dragon1.eat(2)
# p dragon1

# dragon1.eat(3)
# p dragon1

# dragon1.eat(4)
# p dragon1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit

    def initialize(name, disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        @is_old = false
        if @name == "Frodo"
            @ring = true
        else
            @ring = false
        end
    end

    def celebrate_birthday(current_age) #this could also just have no argument
        @age = current_age + 1          #this would be @age = @age + 1
        if @age >= 33 && @age < 101     #but you would have to write that code A LOT to test the conditions(and we don't have loops yet) so i did it this way so you could test ages specifically
            @is_adult = true
        elsif @age >= 101
            @is_old = true
        end
    end
    
end

# hobbit1 = Hobbit.new("Frodo", "gentle")
# p hobbit1

# hobbit1.celebrate_birthday(50)
# p hobbit1

# hobbit1.celebrate_birthday(104)
# p hobbit1

# hobbit2 = Hobbit.new("Bob", "angry")
# p hobbit2

# hobbit2.celebrate_birthday(33)
# p hobbit2

