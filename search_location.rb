require 'colorize'
#require 'catpix'
require 'artii'
require 'tty-prompt'
require_relative './shelter'
require_relative './cat'
require_relative './cat_namer'


def search_by_location(shelters) 
    puts "Shelter names and locations".colorize(:blue)
  shelters.each {|shelter|  
  puts "\n#{shelter.name}: #{shelter.location}\n"
  }
  while true

    menu = ["Return to menu"]
        shelters.each { |shelter| menu.push(shelter.name)}

        
        shelter_select = TTY::Prompt.new.select("Which shelter would you like to search?\n".colorize(:magenta), 
        menu, cycle: true, marker: '>', echo: false)
            
        if shelter_select == shelter.name
            puts "The kitty babies to select from #{shelter_select} are:"


        else    

          return false
      
        end # of if statement
  end # of do |menu|
end # of function

