class Cat

    @@cat_count = 0

    attr_accessor :name, :colour, :hair_type, :temperament, :gender, :age
    
    def initialize(name, colour, hair_type, temperament, gender, age)
        @name = name
        @colour = colour
        @hair_type = hair_type
        @temperament = temperament
        @gender = gender
        @age = age
        @@cat_count += 1
    end

end







# begin
#     cat_namer(meow)
# rescue NameError
#     puts "r"
# end

def add_cat()
    puts "WHat is cat's name? Select R to randomly generate name"
    input = gets.chomp
end


