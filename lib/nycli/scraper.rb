class NYCLI::Scraper 
    attr_accessor :url
    @@page = 1

    def initialize(url = "https://https://www.nyc.com/events/")
        @url = url 
    end

    def get_page
        Nokogiri::HTML(URI.open(self.url))
    end

    def get_events
        self.get_page.css(".eventrecords li[itemtype='http://schema.org/Event']")
    end

    # Scraping elements:

    def show_events
        self.get_events.each do |item|
            event = NYC::Event.new 
            # scraped elements
            # For time reasons, I'll just copy and paste this part.
        end
    end

    def self.page 
        @@page
    end
end

