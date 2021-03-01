lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "NYCLI/version"

Gem::Specification.new do |spec|
  spec.name = "NYCLI"
  spec.version = NYCLI::VERSION
  spec.authors = ["Roeck"]
  spec.email = ["rons9n@gmail.com"]

  spec.summary = %q{"NYC Events Scraper"}
  spec.description = %q{A Scraping data gem for displaying current NYC events from https://nyc.com/events. 
    Its first call shows the user the last 20 events from the page.
    The events are displaying in an ordered list from 1 to 20.
    Typing "more" will present the past 20 from the current events list.
    The events can be selected by their numbers, which when entered, it displays info about them, including their summary, dates, hours and locations, as well as a link for more information and tickets purchase sub-links.}
  spec.homepage = "https://github.com/Roeck/NYCLI"
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "https://rubygems.org/gems"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Roeck/NYCLI"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #         "public gem pushes."
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
end
