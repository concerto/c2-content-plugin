$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "html_text/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "html_text"
  s.version     = HtmlText::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of HtmlText."
  s.description = "TODO: Description of HtmlText."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2"
end
