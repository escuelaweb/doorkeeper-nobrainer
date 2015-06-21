$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "doorkeeper-nobrainer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "doorkeeper-nobrainer"
  s.version     = DoorkeeperNobrainer::VERSION
  s.authors     = ["Sergio Marín", "Gustavo Giménez"]
  s.email       = ["higher.vnf@gmail.com","gimenezanderson@gmail.com"]
  s.homepage    = "http://github.com/escuelaweb/doorkeeper-nobrainer"
  s.summary     = "Doorkeeper NoBrainer ORM"
  s.description = "Doorkeeper NoBrainer ORM"
  s.license     = "MIT"

  s.files = Dir["lib/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "nobrainer"
  s.add_dependency "doorkeeper", ">= 2.2.1"
end
