require 'colorize'
require 'artii'
require 'tty-prompt'
require_relative './util'
require_relative './shelter'
require_relative './cat'
require_relative './cat_namer'
require_relative './search_location'
require_relative './search_feature'

# removes a cat object from shelter and writes the file which holds the shelters array (database)
def remove_kitty(shelters)
    
    menu = ["Return to menu"]
    # make menu from cats name in shelters array
    shelters.each {|shelter|  
        shelter.cats.each {|cat|
            menu.push(cat.name)}}
    

        cat_select = TTY::Prompt.new.select("Which cat has a forever home?\n".colorize(:magenta), 
        menu, cycle: true, marker: '>', echo: false)
    

    #iterate over the shelters array to find cat

    shelters.each {|shelter|  
        shelter.cats.each {|cat| 

        if cat_select == cat.name

            puts "You are removing #{cat.name}, a #{cat.colour} #{cat.hair_type} #{cat.temperament} #{cat.gender} #{cat.age} cat from #{shelter.name}\n"

            cat_select_shelter = shelter.name

            confirm = %w(yes no)
            selection = TTY::Prompt.new.select("Confirm cat choice", confirm)
                if selection == 'yes'
                    shelter.cats.delete(cat)

                    serialized_array = Marshal.dump(shelters)
                    File.open('shelters_file.txt', 'w') {|f| f.write(serialized_array) }
    
                    puts "Hurrah! Another cat rescued.".colorize(:cyan)
                end
            
        elsif    cat_select == "Return to menu"
            return
        end
        }
    }
end

