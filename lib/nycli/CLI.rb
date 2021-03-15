class NYCLI::CLI

  # Setting up class variables, methods and accessors:

  @@white = "\e[0m"
  @@red = "\e[1;31m"
  @@green = "\e[1;32m"
  @@yellow = "\e[1;33m"
  @@blue = "\e[1;34m"

  attr_accessor :name, :date, :day, :time, :venue, :description, :link
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.names
    counter = 1
    self.all.each do |event|
      puts "#{counter}- #{event.name}"
      counter += 1
    end
  end

  # Welcoming user:

  def self.call
    puts "#{@@blue}
      .~~~~~~~~~~~~~~~~~.
      | #{@@yellow}WELCOME TO NYC!#{@@blue} |
      .~~~~~~~~~~~~~~~~~.
      "
    puts "#{@@green}Select your desired events by their numbers:#{@@white}\n\n"

    today = NYCLI::Scraper.new()
    today.show_events
    NYCLI::CLI.names

    def self.details(index)
      event = @@all[index]
      puts "\n#{@@blue}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts "\n#{@@blue}#{event.name.upcase}\n\n#{@@yellow}#{event.date} || #{event.time}\n\n@#{event.venue}\n\n"
      puts "#{@@green}#{event.description}"
      (event.link != nil) ? (puts "\n#{@@white}To read more details or purchase tickets, visit #{event.link}") : (puts "More info to be announced")
      puts "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end

    # Displaying options:

    def self.user_prompt
      puts "\n\n#{@@yellow}Type 'more' to see more events.#{@@white}\n\n"
      puts "#{@@blue}Type 'back' to return to the initial list.#{@@white}\n\n"
      puts "#{@@red}Type 'exit' to quit the application.#{@@white}\n\n"
    end

    def self.action(input)
      if input == "more"
        NYCLI::Scraper.more
        NYCLI::CLI.user_prompt
      elsif input == "back"
        NYCLI::CLI.names
      elsif input.to_i > 0
        if input.to_i <= NYCLI::CLI.all.count
          index = input.to_i - 1
          NYCLI::CLI.details(index)
        end
      else
        puts "\n\n#{@@red}Invalid input. Try again!#{@@white}"
      end
    end

    def self.dates
      counter = 1
      dates = self.all.collect { |event| event.date }
    end

    def self.more_names
      counter = 1
      starter = NYCLI::Scraper.page * 20 - 19
      more_events = starter

      puts "\n"
      self.all.each do |event|
        event = "#{counter}- #{event.name}"
        puts event if counter == more_events
        counter += 1
        more_events += 1 if counter > starter
      end
    end

    # Exit program:

    NYCLI::CLI.user_prompt
    input = gets.strip

    while input != "exit"
      NYCLI::CLI.action(input)
      input = gets.strip
    end
    puts "\n\n#{@@blue}Until next time!#{@@white}\n\n"
  end
end
