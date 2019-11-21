require 'colorize'
require 'artii'
require 'tty-prompt'
require_relative './shelter'
require_relative './cat'
require_relative './cat_namer'
require_relative './util'

# provides feature choices, allowing user to select multiple
# prints cats that match any of the features selected
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
                puts "- #{cat.name}, a #{cat.colour} #{cat.hair_type} #{cat.temperament} #{cat.gender} #{cat.age} cat at #{shelter.name}\n"
            end
        }
    }
    # future feature: add a message when no cat's meet search criteria
end
