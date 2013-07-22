$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_engine_decorators/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_engine_decorators"
  s.version     = RailsEngineDecorators::VERSION
  s.authors     = ["Kunal Chaudhari", "Ryan Bigg", "Philip Arndt", "Antonio Tapiador"]
  s.email       = ["atapiador@dit.upm.es"]
  s.homepage    = "https://github.com/atd/rails_engine_decorators"
  s.summary     = "Extend Rails Engine's business logic (models, controllers, helpers, etc.) easily"
  s.description = "Extend Rails Engine's business logic (models, controllers, helpers, etc.) easily from your application or other engine."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "railties", ">= 3.2.8"

  s.add_development_dependency "rails"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "debugger"
end
