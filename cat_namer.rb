
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
  
    
    number_of_words.times do
    name = words[rand(words.length)]
    
    end

  p name


end
  

  
happy = false

until happy == true


    puts "If you have a word to include in this cat name type now or select n"
    personal_name = gets.chomp.capitalize

        if personal_name == "N"
        puts "How many words in your cat name?"
        number_of_words = gets.chomp.to_i
        cat_namer(number_of_words)
        kitty_called = name_select
        puts "How about #{kitty_called}? y/n"
        confirm_name = gets.chomp
            if confirm_name == y
                puts "add a cat to class!!!"
            else puts "try again"
            end

        else
        puts "How many words in your cat name?"
        number_of_words = gets.chomp.to_i
        cat_namer(number_of_words) 
        kitty_called = name_select + personal_name
        puts "How about #{kitty_called}?"
        end


end

  
  