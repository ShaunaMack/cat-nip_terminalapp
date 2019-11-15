
def cat_namer(number_of_words)

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
    #generate random number between 0 and length of Array
    
    number_of_words.times do
        cat_word = words[rand(words.length)]
        name_array.push(cat_word)
    end
    
    cat_name = name_array.join(" ")
    
    return cat_name
end

def confirm_name(kitty_called)
    while true

        puts "How about #{kitty_called}? y/n"
        confirm = gets.chomp.downcase
        if confirm == "y"
            puts "Cat is officially named #{kitty_called}"
            return true

        elsif confirm == "n"
            return false
            
        else
            puts "Not a valid selection. Please select y or n"

        end
    end
end


#puts cat_namer(3) test that method works
  

happy = false
def name_me_ow() #'Gator said this was acceptable and reasonable
until happy == true

    puts "If you have a word to include in this cat's name, please type it in. Otherwise, please type n:"
    personal_name = gets.chomp.capitalize

    if personal_name == "N"
        puts "How many words in your cat name?"
        number_of_words = gets.chomp.to_i
        kitty_called = cat_namer(number_of_words)

        happy = confirm_name(kitty_called)

    else
        puts "How many words in your cat name?"
        number_of_words = gets.chomp.to_i - 1
        kitty_called = cat_namer(number_of_words) + " " + personal_name
        
        happy = confirm_name(kitty_called)
        
    end

    end
end


  