require 'colorize'
require 'artii'
require 'tty-prompt'
require_relative './shelter'
require_relative './cat'
require_relative './cat_namer'
require_relative './util'

def search_by_feature(shelters)
    puts "Search kitty by feature\n"
    choices = %w(Male Female Short_hair Medium_hair Long_hair Tabby White Ginger Black Tortoise_shell)
    feature_select = TTY::Prompt.new.multi_select("Select features", choices)

    puts "The kitty babies to select from are:\n"
    shelters.each {|shelter|  
        shelter.cats.each {|cat|  
            matching = false
            feature_select.each {|feature|
                if (feature == cat.gender) || (feature == cat.hair_type) || (feature == cat.colour)
                    matching = true
                end
            }
            if matching
                puts ""
                puts "Name: #{cat.name} Colour: #{cat.colour} Hair: #{cat.hair_type} 
                Temperament: #{cat.temperament} Gender: #{cat.gender} Age: #{cat.age} @Shelter: #{shelter.name}\n"
            end
        }
    }
    # how to make this not print if some criteria met?
    puts "Sorry, no cats meet your feature criteria at this time\n"
end
