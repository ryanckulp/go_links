$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "go_link/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "go_link"
  s.version     = GoLink::VERSION
  s.authors     = ["Ryan Kulp"]
  s.email       = ["ryanckulp@gmail.com"]
  s.homepage    = "http://www.ryanckulp.com"
  s.summary     = "Cloak ugly links on your website with branded 'go' paths."
  s.description = "Create vanity URLs for outbound links."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.2"
end
