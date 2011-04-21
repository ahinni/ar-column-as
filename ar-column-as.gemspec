# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "ar-column-as"
  s.version = "0.0.1"
  s.authors = ["Aaron Hinni"]
  s.email   = ["aaron@vedadev.com"]
  s.homepage= 'http://vedadev.com'
  s.summary = "Basic column_as support for ActiveRecord"
  s.description = "Basic column_as support for ActiveRecord"

  s.rubyforge_project = 'ar-column-as'

  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README"]
  s.require_paths = ['lib']
end
