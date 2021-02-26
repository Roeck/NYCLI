class NYCLI::CLI  
  
    # Color variables:

    @@white = "\e[0m"
    @@red = "\e[1;31m"
    @@green = "\e[1;32m"
    @@yellow = "\e[1;33m"
    @@blue = "\e[1;34m"
  
    # Welcoming:

    puts "#{@@blue}
    .~~~~~~~~~~~~~~~~~.
    | #{@@yellow}WELCOME TO NYC!#{@@blue} |
    .~~~~~~~~~~~~~~~~~.
    "
    puts "#{@@green}Select your desired events by their numbers:"
    puts "#{@@white}numbered events\n\n"

    # Showing option:

    def self.user_prompt
        puts "#{@@yellow}Type 'more' to show more events.#{@@white}\n\n"
        puts "#{@@blue}Type 'back to return to the initial list.'#{@@white}\n\n"
        puts "#{@@red}Type 'exit' to quit the application.#{@@white}\n\n"
    end 

    # Options functionalities:

    def self.action(input)
        if input == 'more'
            puts "showing more events"
        elsif input == 'back'
            puts "returning to initial list"
        else
            puts "#{@@red}Invalid input.Try again!"
        end
    end

end