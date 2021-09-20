# Ruby Fundamentals

# Lecture topics:

- Variables
- Methods
- Conditionals
- Arrays
- Hashes
- Loops
- Iteration
- puts
- binding.pry

### Introduction

- Up to this point, we have only been looking and working on front end applications, without our own customized backend so we are going to be moving towards building a backend using the Ruby language
- The reason for this is because Ruby already comes equipped with the tools necessary to create a strong backend
- We will start off by building an application that is used through a command line interface, which is the terminal, and then we will move that app to the web browser

### What we will be building?

- The main goal of this app will be to allow users to create and submit their own pizzas.

#### Program flow:

1. Welcome user and prompt to input name
2. Provide menu options: Create a new starship or see list of existing starships
3. If user selects to add a new starship, it will be added to the already submitted collection
4. If the list is selected, print a list of all starships
5. Allow a user to loop through program
6. Allow user to exit program

### Application Mechanics

- Go over the different files and folders and explain how they all work together

- To run the application:

```
./bin/run
```

- If permission is denied:

```
chmod +x ./bin/run
```

So our first goal is going to be to add some greetings and help user navigate through app:

```
def init
  puts "Welcome to the starships app!"
  puts "Tell us your name: "
  user = gets.strip
  puts "Awesome, #{user.capitalize}, What would you like to do?"
  menu
end
```

Next up, we need to build the menu:

```
def menu
  puts "Enter the number of your selection, or 'exit' to leave the app."
  menu_options
end

def menu_options
  puts " 1. Create a new starship!"
  puts " 2. View all the starships"
  puts " 3. Change your mind? Enter exit to leave the app"
end
```

Now we need to handle our users selection
