require 'tty-prompt'
require_relative './util'

def adopt_kitty()
    puts "Which cat would you like to give a forever home?"
    pussycat_name = gets.chomp.capitalize


    #iterate over the shelters array to find cat
while true
    if pussycat_name == Cat.name
        puts "You are applying to have #{pussycat_name}, 
        hair_type: #{Cat.hair_type}, 
        colour:#{Cat.colour}, 
        age: #{Cat.age}, 
        gender: #{Cat.gender},
        which is currently at #{shelter.name}"
        confirm = %w(yes no)
        selection = TTY::Prompt.new.select("Confirm cat choice", choices)
            if confirm == 'yes'
    else
        "Sorry cat not in selection"
        return false

    

end

def adoption_form()
    customer_deets = []
    puts "Please take customer details from drivers licence"
    puts "What is the full name of adopting cat?"
    full_name = gets.chomp
    customer_deets.push(full_name)
    address = gets.chomp
    customer_deets.push(address)
    
    puts "cat deets"

    File.write('#{Cat.name}.txt', customer_deets)
end

