require 'colorize'
#require 'catpix'
require 'artii'
require 'cat'
require 'shelter'
require_relative 'cat_namer'

a = Artii::Base.new
name, colour, hair_type, temperament, gender, age

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

quit = false

until quit == true
    

    puts a.asciify("Cat-Nip").blue
    puts " The pop up cat adoption centre".blue
    puts "Thank you for facilitating cat rehoming!".blue
    puts "-------------------------------------------".cyan
    puts "Please select from the menu:\n
    Search for a kitty to adopt: 1\n
    Add kitty for adoption: 2\n
    Adopt a cat: 3".magenta

    i_want = gets.chomp.to_i
    case i_want
    when 1
      puts "Kitty searching..."

    when 2
      puts "Kitty adder"
    when 3
      puts "Apply for a Kitty"
    else
      puts "not a valid selection"
    end
    
    puts "Still there? y or n"
      leave = gets.chomp
        if leave == "n"
          return quit == false
        end
end
  
