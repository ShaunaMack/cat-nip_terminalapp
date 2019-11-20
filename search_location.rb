require 'colorize'
require 'artii'
require 'tty-prompt'
require_relative './shelter'
require_relative './cat'
require_relative './cat_namer'
require_relative './util'


def search_by_location(shelters) 
    puts "Shelter names and locations".colorize(:blue)
  shelters.each {|shelter|  
    puts "\n#{shelter.name}: #{shelter.location}\n"
  }

    menu = ["Return to menu"]
    shelters.each { |shelter| menu.push(shelter.name)}

    shelter_select = TTY::Prompt.new.select("Which shelter would you like to search?\n".colorize(:magenta), 
    menu, cycle: true, marker: '>', echo: false)
    
    
    shelters.each {|shelter|  
        if shelter_select == shelter.name
            puts "The kitty babies to select from #{shelter_select} are:\n"
            shelter.cats.each {|cat|
                puts ""
                puts "Name: #{cat.name} Colour: #{cat.colour} Hair: #{cat.hair_type} 
                Temperament: #{cat.temperament} Gender: #{cat.gender} Age: #{cat.age}\n"
            }
        end
    }

end # of function

