STARSHIPS = []

def init
  puts "Welcome to the Starships App!"
  puts "Tell us your name: "
  user = gets.strip
  puts "Awesome, #{user.capitalize}, What would you like to do?"
  menu
  menu_selection
  goodbye
end 

def menu
  puts "Enter the number of your selection, or 'exit' to leave the app."
  menu_options
end 

def menu_options
  puts " 1. Create a new starship!"
  puts " 2. View all the starships"
  puts " 3. Change your mind? Enter exit to leave the app"
end 

def menu_selection
  selection = gets.strip

  while selection != "exit"
    if selection == "1"
      starship = create_starship
      STARSHIPS << starship
      starship_details(starship)
    elsif selection == "2"
      starship_list
    else
      puts "I'm not sure what you mean. Try again: "
    end 
    menu_options
    selection = gets.strip
  end 
end 

def create_starship
  puts "Name of starship, get creative!:"
  name = gets.strip
  puts "Whats the model?:"
  model = gets.strip

  starship = {
    name: name,
    model: model,
  }
end 

def starship_details(starship, index="You just created")
  puts ""
  puts ""
  puts "#{index}:"
  puts " Name: #{starship[:name]}"
  puts " Model: #{starship[:model]}"
  puts ""
end

def starship_list 
  if STARSHIPS.length == 0
    puts ""
    puts "No starships have been created yet..."
    puts ""
  else
    STARSHIPS.each.with_index do |starship, index|
      index += 1
      starship_details(starship, index)
    end 
  end   
end  

def goodbye
  puts "Hopefully we'll see you back soon!"
end 