class NYCLI::Event 

    @@white = "\e[0m"
    @@green = "\e[1;32m"
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

    # More events displaying:

    def self.more_names
        counter = 1
        starter = NYCLI::Scraper.page * 20 - 19
        more_events = starter

        puts "\n"
        self.all.each do |event|
            event = "#{counter}- #{event.name}"
            puts event if counter == more_events
            counter += 1
            more_events += if counter > starter
        end
    end

    # Displayig event details:

    def self.details(index)
        event = @@all[index]
        puts "\n#{@@blue}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" 
        puts "\n#{@@blue}#{event.name.upcase}\n\n#{@@green}#{event.date} || #{event.time}\n\n@#{event.venue}"
        puts "#{event.description}"
        (event.link != nil) ? (puts "\n#{@@white}To read more details or purchase tickets, visit#{event.link}") : (puts "More info to be announced")
        puts "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end 

    # Displaying dates:

    def self.dates 
        counter = 1
        dates = self.all.collect{|event| event.date}
    end
end
end

