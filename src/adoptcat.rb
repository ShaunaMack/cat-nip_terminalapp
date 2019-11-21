require 'colorize'
require 'tty-prompt'
require_relative './util'
require_relative './shelter'
require_relative './cat'
require_relative './cat_namer'
require_relative './search_location'
require_relative './search_feature'

# show a menu of cats available for adoption so user can select a cat
# asks the user to confirm their selection
# runs adoption_form method
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

            puts "You are creating an application for adoption of #{cat.name}, a #{cat.colour} #{cat.hair_type} #{cat.temperament} #{cat.gender} #{cat.age} cat at #{shelter.name}\n"

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

# asks user to enter the customer's details 
# creates an adoption form text file to be sent to the shelter
def adoption_form(cat_select,cat_select_shelter)
    customer_deets = []
    puts "Please take customer details from drivers licence".colorize(:magenta)
    puts "What is the full name of customer adopting cat?"
    full_name = gets.chomp
    customer_deets.push(full_name)
    puts "What is the home address of customer adopting cat?"
    address = gets.chomp
    customer_deets.push(address)
    puts "What is the phone number of customer adopting cat?"
    phone_no = gets.chomp
    customer_deets.push(phone_no)
    puts "What is the email address of customer adopting cat?"
    email = gets.chomp
    customer_deets.push(email)
    
    customer_deets.push("Applying to adopt:#{cat_select}")

    File.write("#{cat_select_shelter}_#{cat_select}_Adoption_Form.txt", customer_deets)

    puts"Adoption application form saved to be sent to the shelter for approval".colorize(:cyan)
end

