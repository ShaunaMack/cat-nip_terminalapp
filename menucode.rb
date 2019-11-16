require 'colorize'
#require 'catpix'
require 'artii'
require 'tty-prompt'
require_relative './shelter'
require_relative './cat'
require_relative './cat_namer'

a = Artii::Base.new


shelters = [
  Shelter.new("RSPCA", "Wacol", 20, [
    Cat.new("Mr Purr", "Tabby", "Short", "Quiet", "Male", "3"), 
    Cat.new("Dundee", "White", "Long", "Quiet", "Female", "3")]),
  Shelter.new("Little Legs", "Brisbane City", 10, [
    Cat.new("Duncan", "Tabby", "Short", "Boisterous", "Male", "5"), 
    Cat.new("Ricky", "Tabby", "Short", "Affectionate", "Male", "3")])
  ]


def clear()
  puts "\e[H\e[2J"
end

=begin
need to pass in shelters array 
so that it can iterate over the array within the method
=end

def search_by_location(shelters) 

  shelters.each {|shelter|  
  puts "\n#{shelter.name}: #{shelter.location}\n"
  }
  while true

      shelter_select = TTY::Prompt.new.select("which sheleter:\n".colorize(:magenta),cycle: true, marker: '>', echo: false) do |menu|
      
          menu.choice('RSPCA')
          menu.choice('Little Legs')
          menu.choice('Return to menu')

      case shelter_select
      when 'RSPCA'
          puts "Meow"
              
      when 'Little Legs'
          puts "Woof"

      when 'Return to menu'
          return false
      
      end # of case statement
  end # of do |menu|
end # of loop
end # of function

  

def search_by_feature()
  while true

    
  puts "Search kitty by feature"
  choices = %w(age gender hair_type colour)
  selection = TTY::Prompt.new.multi_select("Select features", choices)

    if Cat.feature == selection 
      return 
    else
      puts "oops"
    end
  end
end

def search()

  while true

  search_choice = TTY::Prompt.new.select("Please select from the menu:\n".colorize(:magenta), cycle: true, marker: '>', echo: false) do |menu| 
    
    menu.choice('Location', 1)
    menu.choice('Cat Feature', 2)
    menu.choice('Return to main menu', 3)

    #puts "Checking for the value of search_choice inside search method #{search_choice}"

    case search_choice
      when 1
        puts "Selected option 1"
        search_by_location(shelters)

      when 2
        search_by_feature()

      when 3
        puts "menu"
        return false

      end # of case statement
    
    end # of do |menu|
  end # of while loop
end # of method


puts a.asciify("Cat-Nip").colorize(:blue)
puts " The pop up cat adoption centre".colorize(:blue)
puts "Thank you for facilitating cat rehoming!".colorize(:blue)
puts "-------------------------------------------".colorize(:cyan)

while true

  i_want = TTY::Prompt.new.select("Please select from the menu:\n".colorize(:magenta), cycle: true, marker: '>', echo: false) do |menu|
      menu.choice('Search for a kitty to adopt', 1)
      menu.choice('Add kitty for adoption', 2)
      menu.choice('Adopt a kitty', 3)
      menu.choice('Exit', 4)

    case i_want
    when 1
      puts "Kitty searching..."
      puts "What would you like to search by?"
      search()
    when 2
      puts "Kitty adder"

    when 3
      puts "Apply for a Kitty"

    when 4
      farewell = a.asciify("PURRRRRR").colorize(:cyan)
      farewell.length.times do |i| # Iterates over each index in a given string
        clear()
        # Displays all characters in the string up to the index being iterated over.
        puts farewell[0, i]
        sleep(0.01)
        end
        puts "Thank you for helping to find forever homes for purrfect fur babies in need.".colorize(:blue)
        return 
      end # of do user_input
      end # of case
end # of while

