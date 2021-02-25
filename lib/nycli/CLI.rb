class NYCLI::CLI  
  
    # Color variables:

    @@white = "\e[0m"
    @@red = "\e[1;31m"
    @@green = "\e[1;32m"
    @@yellow = "\e[1;33"
    @@blue = "\e[1;34"

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

    
end