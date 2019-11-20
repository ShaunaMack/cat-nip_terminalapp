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


a = Artii::Base.new

shelters = [
  Shelter.new("RSPCA", "Wacol", 20, [
    Cat.new("Mr Purr", "Tabby", "Short_hair", "Quiet", "Male", "3"), 
    Cat.new("Dundee", "White", "Long_hair", "Quiet", "Female", "3")]),
    Shelter.new("Little Legs", "Brisbane City", 10, [
    Cat.new("Duncan", "Tabby", "Short_hair", "Boisterous", "Male", "5"), 
    Cat.new("Ricky", "Tabby", "Short_hair", "Affectionate", "Male", "3")]),
    Shelter.new("Animal Rescue QLD", "Garnge", 1, []),
    Shelter.new("Animal Welfare League QLD", "Helensvale", 1, []),
    Shelter.new("Little Paws Kitten Rescue", "Logan", 1, []),
    Shelter.new("Brisbane Valley Cat Rescue", "Esk", 1, []),
    Shelter.new("Naveen's Cat Foster Care", "Spring Hill", 9, []),
  ]



#need to pass in shelters array 
#so that it can iterate over the array within the method

def search(shelters)

  while true

  search_choice = TTY::Prompt.new.select("Please select from the kitty search menu:\n".colorize(:magenta), 
      cycle: true, marker: '>', echo: false) do |menu| 
    
    menu.choice('Location', 1)
    menu.choice('Cat Feature', 2)
    menu.choice('Return to main menu', 3)

    #puts "Checking for the value of search_choice inside search method #{search_choice}"

    case search_choice
      when 1
        puts "Selected option 1"
        search_by_location(shelters)

      when 2
        search_by_feature(shelters)

      when 3
        puts "menu"
        return false

      end # of case statement
    
    end # of do |menu|
  end # of while loop
end # of method

clear()

puts a.asciify("Cat-Nip").colorize(:blue)
puts " The pop up cat adoption centre".colorize(:blue)
puts "Thank you for facilitating cat rehoming!".colorize(:blue)
puts "-------------------------------------------".colorize(:cyan)

while true

  i_want = TTY::Prompt.new.select("Please select from the menu:\n".colorize(:magenta), 
        cycle: true, marker: '>', echo: false) do |menu|
      menu.choice('Search for a kitty to adopt', 1)
      menu.choice('Add kitty for adoption', 2)
      menu.choice('Adopt a kitty', 3)
      menu.choice('Exit', 4)

    case i_want
    when 1
      puts "Kitty searching..."
      puts "What would you like to search by?"
      search(shelters)
    when 2
      puts "Kitty adder"
      add_cat(shelters)
    when 3
      pusheen()
      puts "Apply for a Kitty"
      adopt_kitty(shelters)

    when 4
      farewell = a.asciify("PURRRRRR").colorize(:cyan)
      farewell.length.times do |i| # Iterates over each index in a given string
        clear()
        # Displays all characters in the string up to the index being iterated over.
        puts farewell[0, i]
        sleep(0.001)
        end
        puts "Thank you for helping to find forever homes for purrfect fur babies in need.".colorize(:blue)
        return 
      end # of do user_input
      end # of case
end # of while

