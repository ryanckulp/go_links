$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "go_link/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "go_link"
  s.version     = GoLink::VERSION
  s.authors     = ["Ryan Kulp"]
  s.email       = ["ryanckulp@gmail.com"]
  s.homepage    = ""
  s.summary     = ": Summary of GoLink."
  s.description = ": Description of GoLink."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.2"

  s.add_development_dependency "sqlite3"
end
