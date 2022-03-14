# NYCLI

![Screen Shot 2022-03-14 at 3 28 25 AM](https://user-images.githubusercontent.com/28878478/158125287-f4f9d7c8-eb5c-47f6-92c6-0ccdf4625533.png)
<br>

![Screen Shot 2022-03-14 at 3 29 20 AM](https://user-images.githubusercontent.com/28878478/158125325-42dde6b2-750b-4154-bdd4-f4d79c02aaac.png)
<br>



A Scraping data gem for displaying current NYC events from https://nyc.com/events. 
Its first call shows the user the last 20 events from the page.

The events are displaying in an ordered list from 1 to 20.
Typing "more" will present the past 20 from the current events list.

The events can be selected by their numbers, which when entered, it displays info about them, including their summary, dates, hours and locations, as well as a link for more information and tickets purchase sub-links.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'NYCLI'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install NYCLI
    
Run the app:

   ```
   $ cd bin
   $ ruby nycli
   ```
    
    
NOTE: Currently works best under version 2.7.2 of Ruby.


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Roeck/NYCLI. This project is intended to be a safe, welcoming space for collaboration and contributions.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


