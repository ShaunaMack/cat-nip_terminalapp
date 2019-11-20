require 'colorize'
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


def add_cat(shelters)
    puts "What colour is the kitty?".colorize(:blue)
      colour_choices = %w(Tabby White Ginger Black White 2_colour Tortoise_shell Calico)
      colour = TTY::Prompt.new.select("Select colour", colour_choices, 
        cycle: true, marker: '>', echo: false)
      
      puts "Select hair type".colorize(:blue)
      hair_choices = %w(Long_hair Medium_hair Short_hair)
      hair_type = TTY::Prompt.new.select("Select hair type", hair_choices)
      
      puts "What is kitties temperament?".colorize(:blue)
      temperament_choices = %w(Affectionate Quiet Energetic Even Athletic Assertive)
      temperament = TTY::Prompt.new.select("Select temperament", temperament_choices)
      

      puts "Kitties gender?".colorize(:blue)
      gender_choices = %w(female male)
      gender = TTY::Prompt.new.select("Select gender", gender_choices)

      puts "Kitties approximate age?".colorize(:blue)
      age_choices = %w(kitten adult mature)
      age = TTY::Prompt.new.select("Select age", age_choices)
      
      
      name = name_me_ow()
      
      puts "Lets find a for now home for #{name}, ".colorize(:cyan)
      sleep(1)

    
      new_cat = Cat.new(name, colour, hair_type, temperament, gender, age)

    cat_to_shelter(shelters, new_cat)

end


def cat_to_shelter(shelters, new_cat)
    
    menu = ["Return to menu"]
    shelters.each { |shelter| menu.push(shelter.name)}

    shelter_select = TTY::Prompt.new.select("Which shelter will look after the kitty?\n".colorize(:magenta), 
    menu, cycle: true, marker: '>', echo: false)
    
    shelters.each {|shelter|  
        if shelter_select == shelter.name
            puts "#{new_cat.name}'s details will be added to #{shelter_select}\n"
            shelter.cats.push(new_cat)
            puts "Kitty is now searchable"
        end
    }
    
    
end # of function
