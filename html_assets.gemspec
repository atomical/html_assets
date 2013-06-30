$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "html_assets/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "html_assets"
  s.version     = HtmlAssets::VERSION
  s.authors     = ["Adam Hallett"]
  s.email       = ["adam.t.hallett@gmail.com"]
  s.homepage    = "http://github.com/atomical/html_assets"
  s.summary     = "HTML assets compiled in javascript"
  s.description = "HTML assets compiled in javascript"

  s.files = Dir["{app,config,db,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
end
