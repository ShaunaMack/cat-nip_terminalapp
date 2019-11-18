require 'colorize'
#require 'catpix'
require 'artii'
require 'tty-prompt'
require_relative './shelter'
require_relative './cat'
require_relative './cat_namer'


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
