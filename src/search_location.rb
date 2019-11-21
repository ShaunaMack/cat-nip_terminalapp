require 'colorize'
require 'artii'
require 'tty-prompt'
require_relative './shelter'
require_relative './cat'
require_relative './cat_namer'
require_relative './util'


def search_by_location(shelters) 
    puts "Shelter names and locations".colorize(:blue)
    menu = ["Return to menu"]
    shelters.each { |shelter| menu.push("#{shelter.name}, #{shelter.location}")}

    shelter_select = TTY::Prompt.new.select("Which shelter would you like to search?\n".colorize(:magenta), 
    menu, cycle: true, marker: '>', echo: false)
    
    
    shelters.each {|shelter|  
        if shelter_select.start_with?(shelter.name)
            puts "The kitty babies to select from #{shelter_select} are:\n"
            shelter.cats.each {|cat|
                puts "- #{cat.name}, a #{cat.colour} #{cat.hair_type} #{cat.temperament} #{cat.gender} #{cat.age} cat\n"
            }
        end
    }

end # of function

