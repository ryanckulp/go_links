$:.push File.expand_path("../lib", __FILE__)

require "go_links/version"

Gem::Specification.new do |s|
  s.name        = "go_links"
  s.version     = GoLinks::VERSION
  s.authors     = ["Ryan Kulp"]
  s.email       = ["ryanckulp@gmail.com"]
  s.homepage    = "http://www.ryanckulp.com"
  s.summary     = "Cloak ugly links on your website with branded 'go' paths."
  s.description = "Create vanity URLs for outbound links."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
end
