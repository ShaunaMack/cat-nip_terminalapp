require 'colorize'
#require 'catpix'
require 'artii'
require 'tty-prompt'
require_relative './shelter'
require_relative './cat'
require_relative './cat_namer'

a = Artii::Base.new

prompt = TTY::Prompt.new


shelters = [
  Shelter.new("RSPCA", "Wacol", 100, [
    Cat.new("Mr Purr", "Tabby", "Short", "Quiet", "Male", "3"), 
    Cat.new("Dundee", "White", "Long", "Quiet", "Female", "3")]),
  Shelter.new("Little Legs", "Brisbane City", 40, [
    Cat.new("Duncan", "Tabby", "Short", "Boisterous", "Male", "5"), 
    Cat.new("Ricky", "Tabby", "Short", "Affectionate", "Male", "3")])
  ]

  def search_by_location(shelters) 

    shelters.each {|shelter|  
    puts "#{shelter.name}: #{shelter.location}"
    }
    puts "Which shelter would you like to select? (type name of shelter)"
    meow = gets.chomp.capitalize
  
  end
  
# shelters = {
#     "RSPCA" => ["Wacol", cat_count, available_rooms, [Cat.new(), cat2, cat3]],
#     "Little Legs" => ["Brisbane City", ],
#     "Animal Rescue QLD" => ["Garnge", ],
#     "Animal Welfare League QLD" => ["Helensvale", ],
#     "Little Paws Kitten Rescue" => ["Logan", ],
#     "Brisbane Valley Cat Rescue" => ["Esk", ],
#     "Naveen's Cat Foster Care" => ["Spring Hill", 0, 9],
# }



search_by_location() 

  def search_by_feature()
    puts "Search kitty by feature"
    choices = %w(age gender hair_type colour)
    TTY::Prompt.new.multi_select("Select features", choices)
    # feature_choice = TTY::Prompt.new.multi_select("Select feature(s)") do |menu| menu.enum ')'
    
    #   menu.choice :age,{score: 10}
    #   menu.choice :gender,{score: 20}
    #   menu.choice :hair_type,{score: 30}
    #   menu.choice :colour,{score: 40}
      
  end

  def search()
  search_choice = TTY::Prompt.new.select("Please select from the menu:\n".magenta, cycle: true, marker: '>', echo: false) do |menu| menu.enum ')'
    menu.choice('Location', 1)
    menu.choice('Cat Feature', 2)
    menu.choice('Return to main menu', 3)
  
    puts "Checking for the value of search_choice inside search method #{search_choice}"

  case search_choice
  when 1
    puts "Selected option 1"
    search_by_location()
  when 2
    search_by_feature()
  when 3
    puts "menu"
  end #end of case statement
end #end of do |menu|

end
    


quit = false

    puts a.asciify("Cat-Nip").blue
    puts " The pop up cat adoption centre".blue
    puts "Thank you for facilitating cat rehoming!".blue
    puts "-------------------------------------------".cyan
  
    until quit == true

    i_want = prompt.select("Please select from the menu:\n".magenta, cycle: true, marker: '>', echo: false) do |menu|
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
    puts "Thank you for helping to find forever homes for purrfect fur babies in need".blue
    sleep(0.25)
    puts a.asciify("P").cyan
    sleep(0.25)
    puts a.asciify("U").cyan
    sleep(0.25)
    puts a.asciify("R").cyan
    sleep(0.25)
    puts a.asciify("R").cyan
    
    return quit == false

        end
    end
  end
