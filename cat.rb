require 'colorize'
#require 'catpix'
require 'artii'
require 'tty-prompt'
require_relative './util'
require_relative './shelter'
require_relative './cat'
require_relative './cat_namer'
require_relative './search_location'
require_relative './search_feature'
require_relative './adoptcat'

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
    puts "What colour is the kitty?".colorize(:blue)
      colour_choices = %w(Tabby White Ginger Black White 2_colour Tortoise_shell)
      colour = TTY::Prompt.new.select("Select colour", colour_choices, 
        cycle: true, marker: '>', echo: false)
      
      puts "Select hair type".colorize(:blue)
      hair_choices = %w(Long_hair Medium_hair Short_hair)
      colour = TTY::Prompt.new.select("Select hair type", hair_choices)
      
      puts "What is kitties temperament?".colorize(:blue)
      temperament = gets.chomp

      puts "Kitties gender?".colorize(:blue)
      gender_choices = %w(female male)
      colour = TTY::Prompt.new.select("Select gender", gender_choices)

      puts "Kitties approximate age?".colorize(:blue)
      age = gets.chomp
      
      name = name_me_ow()
      
      puts "Lets find a for now home for #{name}, ".colorize(:cyan)
      sleep(1)

      Cat.new(name, hair_type, gender, age)

      return 

end

# def cat_to_shelter(shelters, )

#     shelters.push(shelter, ) [
        

# menu = ["Return to menu"]
#     shelters.each { |shelter| menu.push(shelter.name)}

#     shelter_select = TTY::Prompt.new.select("Which shelter would you like to search?\n".colorize(:magenta), 
#     menu, cycle: true, marker: '>', echo: false)
    
    
#     shelters.each {|shelter|  
#         if shelter_select == shelter.name
#             puts "The kitty babies to select from #{shelter_select} are:\n"
#             shelter.cats.each {|cat|
#                 puts ""
#                 puts "Name: #{cat.name} Colour: #{cat.colour} Hair: #{cat.hair_type} 
#                 Temperament: #{cat.temperament} Gender: #{cat.gender} Age: #{cat.age}\n"
#             }
#         end
#     }

# end # of function
