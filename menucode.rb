require 'colorize'
#require 'catpix'
require 'artii'
require 'tty-prompt'
require_relative './shelter'
require_relative './cat'
require_relative './cat_namer'

a = Artii::Base.new



shelters = [
  Shelter.new("RSPCA", "Wacol", 100, [
    Cat.new("Mr Purr", "Tabby", "Short", "Quiet", "Male", "3"), 
    Cat.new("Dundee", "White", "Long", "Quiet", "Female", "3")]),
  Shelter.new("Little Legs", "Brisbane City", 40, [
    Cat.new("Duncan", "Tabby", "Short", "Boisterous", "Male", "5"), 
    Cat.new("Ricky", "Tabby", "Short", "Affectionate", "Male", "3")])
  ]

# shelters = {
#     "RSPCA" => ["Wacol", cat_count, available_rooms, [Cat.new(), cat2, cat3]],
#     "Little Legs" => ["Brisbane City", ],
#     "Animal Rescue QLD" => ["Garnge", ],
#     "Animal Welfare League QLD" => ["Helensvale", ],
#     "Little Paws Kitten Rescue" => ["Logan", ],
#     "Brisbane Valley Cat Rescue" => ["Esk", ],
#     "Naveen's Cat Foster Care" => ["Spring Hill", 0, 9],
# }



def search_by_location() 

  shelters.each {|shelter|  
    puts "#{shelter.name}: #{shelter.location}"
  }
  puts "Which shelter would you like to select? (type name of shelter)"
  meow = gets.chomp.capitalize

end

  def search_by_feature()
    

  end

  def search()
    puts "What would you like to search by?"
    puts "Location: 1 or Cat Feature: 2"
    search_choice = gets.chomp.to_i
    case search_choice
    when 1
      search_by_location()
    when 2
      search_by_feature()
    else
      puts "not a valid selection"
    end

  end



quit = false

until quit == true
    

    puts a.asciify("Cat-Nip").blue
    puts " The pop up cat adoption centre".blue
    puts "Thank you for facilitating cat rehoming!".blue
    puts "-------------------------------------------".cyan

    i_want = TTY::Prompt.new.select("Please select from the menu:\n".magenta,  cycle: false, marker: '>', echo: true) do |menu|
        menu.choice('Search for a kitty to adopt', 1)
        menu.choice('Add kitty for adoption', 2)
        menu.choice('Adopt a kitty', 3)
        menu.choice('Exit', 4)

    case i_want
    when 1
      puts "Kitty searching..."
      search()

    when 2
      puts "Kitty adder"

    when 3
      puts "Apply for a Kitty"

    when 4
    puts "Thank you for helping to find forever homes for purrfect fur babies in need\n See you next time!"
          return quit == false

        end
  end
end
