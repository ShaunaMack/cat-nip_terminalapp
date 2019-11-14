class Cat

    @@cat_count = 0

    attr_accessor :name, :colour, :hair_type, 
    
    
    def initialize(name, colour, hair_type, temperament, gender, age)
        @name = name
        @colour = colour
        @@cat_count += 1
        @temperament = temperament
        @gender = gender
        @age = age

    end


end

shelters = {"RSPCA" => ["Wacol", cat_count, available_rooms],
    "Little Legs" => [""],
    "Animal Rescue QLD" => [],
    "Animal Welfare League QLD" => [],
    "Little Paws Kitten Rescue" => [],
    "Best Friends Rescue" => [],
    "Animal Angels Rescue" => [],
    "Brisbane Valley Cat Rescue" => [],
    "Naveen's Cat Foster Care" => [],
}





# begin
#     cat_namer(meow)
# rescue NameError
#     puts "r"
# end


Duncan = Cat.New()

