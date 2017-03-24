$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hotentic_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hotentic_engine"
  s.version     = HotenticEngine::VERSION
  s.authors     = ["Jean-Baptiste Vilain", "Nicolas Beaudouin"]
  s.email       = ["jbvilain@gmail.com", "n.beaudouin@outlook.fr"]
  s.homepage    = "http://hotentic.com"
  s.summary     = "A site engine for the tourism industry professionals."
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
  s.add_dependency "jquery-rails"
  s.add_dependency "ckeditor"

  s.add_development_dependency "sqlite3"
end
