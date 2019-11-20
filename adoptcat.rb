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


def adopt_kitty(shelters)
    
    menu = ["Return to menu"]
    # make menu from cats name in shelters array
    shelters.each {|shelter|  
        shelter.cats.each {|cat|
            menu.push(cat.name)}}
    

        cat_select = TTY::Prompt.new.select("Which cat has a possible forever home?\n".colorize(:magenta), 
        menu, cycle: true, marker: '>', echo: false)
    

    #iterate over the shelters array to find cat

    shelters.each {|shelter|  
        shelter.cats.each {|cat| 

        if cat_select == cat.name

            puts "You are applying to adopt out #{cat.name}, 
            hair_type: #{cat.hair_type}, 
            colour: #{cat.colour}, 
            age: #{cat.age}, 
            gender: #{cat.gender},
            which is currently at #{shelter.name}"

            cat_select_shelter = shelter.name

            confirm = %w(yes no)
            selection = TTY::Prompt.new.select("Confirm cat choice", confirm)
                if selection == 'yes'
                    adoption_form(cat_select, cat_select_shelter)
                end
            
        elsif    cat_select == "Return to menu"
            return
        end
        }
    }
end

def adoption_form(cat_select,cat_select_shelter)
    customer_deets = []
    puts "Please take customer details from drivers licence".colorize(:magenta)
    puts "What is the full name of customer adopting cat?"
    full_name = gets.chomp
    customer_deets.push(full_name)
    puts "What is the address of customer adopting cat?"
    address = gets.chomp
    customer_deets.push(address)
    puts "What is the phone number of customer adopting cat?"
    phone_no = gets.chomp
    customer_deets.push(phone_no)
    
    customer_deets.push("Applying to adopt:#{cat_select}")

    File.write("#{cat_select_shelter}_#{cat_select}_Adoption_Form.txt", customer_deets)

    puts"Adoption application form saved to be sent to the shelter for approval".colorize(:cyan)
end

