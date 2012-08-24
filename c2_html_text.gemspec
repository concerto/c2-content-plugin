$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "c2_html_text/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "c2_html_text"
  s.version     = C2HtmlText::VERSION
  s.authors     = ["Brian Michalski"]
  s.email       = ["bmichalski@gmail.com"]
  s.homepage    = "https://github.com/concerto"
  s.summary     = "Formatted HTMLText for Concerto 2."
  s.description = <<-EOF
    Add RedCloth formatted text to Concerto 2, friendly for rendering
    in the Text fields, commonly located in the sidebar.
  EOF

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2"
  s.add_dependency "RedCloth", ">= 4.2.8"
end
