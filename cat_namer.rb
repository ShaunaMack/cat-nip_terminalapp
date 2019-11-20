require 'colorize'
require 'tty-prompt'

def cat_namer(number_of_words)

    # need a good list of gender neutral names for individuality of cat naming

    words = ["Cat", "Meow", "Purr", "Fluffy",
      "Turtle", "Speedy", "Coder", "Adrian", "Alaska", "Alex", 
      "Angel", "Ash", "Aspen", "Avery", "Babe", "Bailey", 
      "Bandit", "Bear", "Beasley", "Bentley", "Berkeley", 
      "Bingo", "Biscuit", "Blaine", "Blue", "Boo", "Boomer", 
      "Brownie", "Butters", "Butterscotch", "Button", 
      "Charlie", "Cherrio", "Chevy", "Chewie", "Chocolate", 
      "Chunk", "Ciao", "Coco", "Colby", "Corky", "Cuddles", 
      "Cupid", "Dakota", "Domino", "Dot", "Echo", "Elf", 
      "Emery", "Espresso", "Fluffy", "Frankie", "Freckles", 
      "Frisky", "Frosty", "Furball", "Fuzzy", "Gizmo", "Gouda", 
      "Gray", "Harley", "Happy", "Harper", "Hayden", "Hershey", 
      "Ivory", "Java", "Jazz", "Jordy", "Jules", "Kai", "Kennedy", 
      "Kibbles", "Kit", "Laika", "Link", "Lucky", "Maple", "Micah", 
      "Morgan", "Muffin", "Munchkin", "Nacho", "Nova", "Nugget", 
      "Oakley", "Onyx", "Oreo", "Patches", "Paws", "Payton", 
      "Peanut", "Pebbles", "Peewee", "Pepper", "Phoenix", "Pinky", 
      "Pinot", "Pistachio", "Pixel", "Pooch", "Pookie", "Puffin", 
      "Puffy", "Pumpkin", "Quinn", "Raisin", "Rascal", "Rebel", 
      "Reese", "Riley", "River", "Rory", "Sage", "Sam", "Scout", 
      "Scrappy", "Sidney", "Shadow", "Shaggy", "Sky", "Skylar", 
      "Snickers", "Snowball", "Sparrow", "Squat", "Stinky", 
      "Squirt", "Storm", "Sunny", "Taylor", "Twilight", 
      "Twix", "Waffles", "Wags", "Woof", "Wooly", "Zen", "Tabby"]
  
    name_array = []
    
    # user chooses number of words to be selected whilst iterating over array of names
    # randomly selected names added to name array
    number_of_words.times do
        cat_word = words[rand(words.length)]
        name_array.push(cat_word)
    end
    
    cat_name = name_array.join(" ")
    # new cat name returned as a string
    return cat_name
end

def confirm_name(kitty_called)

    puts "How about #{kitty_called}?".colorize(:blue)
    choices = %w(yes no)
    confirm = TTY::Prompt.new.select("Confirm name?", choices)
    
    if confirm == "yes"
        puts "Cat is officially named #{kitty_called}"
        return true

    else
        return false
    end
end


#puts cat_namer(3) to test that the method works
  
def name_me_ow() #'Gator said this was acceptable and reasonable

    happy = false

    until happy == true

        puts "If you have a word to include in this cat's name, please type it in.\n Otherwise, please type n:".colorize(:blue)
        personal_name = gets.chomp.capitalize


        if personal_name == "N"
            puts "How many words in your cat name?".colorize(:blue)
            number_of_words = gets.chomp.to_i
            if number_of_words <= 0 || number_of_words > 7
                puts "Two names is most common"
                number_of_words = 2
            end

            kitty_called = cat_namer(number_of_words)
            

        else
            puts "How many words in your cat name?".colorize(:blue)
            number_of_words = gets.chomp.to_i - 1
            if number_of_words <= 0 || number_of_words > 6
                puts "Two names is most common"
                number_of_words = 1
            end
            kitty_called = cat_namer(number_of_words) + " " + personal_name
            
            
        end
        happy = confirm_name(kitty_called)
    end
    return kitty_called
end


