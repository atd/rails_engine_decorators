$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_engine_decorators/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_engine_decorators"
  s.version     = RailsEngineDecorators::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsEngineDecorators."
  s.description = "TODO: Description of RailsEngineDecorators."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "debugger"
end
