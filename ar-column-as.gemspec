# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "ar-column-as"
  s.version = "0.0.3"
  s.authors = ["Aaron Hinni"]
  s.email   = ["aaron@vedadev.com"]
  s.homepage= 'https://github.com/ahinni/ar-column-as'
  s.summary = "Adds a few simple helper methods that can be used with ActiveRecord::select."
  s.description = "Adds a few simple helper methods that can be used with ActiveRecord::select."

  #s.rubyforge_project = 'ar-column-as'

  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.require_paths = ['lib']
end
