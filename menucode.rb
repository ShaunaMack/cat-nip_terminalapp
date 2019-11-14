require 'colorize'
#require 'catpix'
require 'artii'

a = Artii::Base.new

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
  
