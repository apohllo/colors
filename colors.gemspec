Gem::Specification.new do |s|
  s.name = "colors"
  s.version = "0.0.6"
  s.date = "2009-10-08"
  s.summary = "Ruby String extesion for colored strings"
  s.email = "apohllo@o2.pl"
  s.homepage = "http://github.com/apohllo/colors"
  s.description = "Extensions for String highliting. 
  It uses ANSI escape sequences to produce colorful strings."
  s.has_rdoc = false
  s.authors = ['Aleksander Pohl']
  s.files = ["Rakefile", 
    "colors.gemspec", 
    'lib/colors.rb', 
    'lib/colors/string.rb',
    'features/color.feature', 
    'README.txt', 
    'changelog.txt'
  ]  
  #s.autorequire = 'lib/colors.rb'
  s.test_files = [
    'features/color.feature'
  ]
  s.rdoc_options = ["--main", "README.txt"]
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.txt"]
end

