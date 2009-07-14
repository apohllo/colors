Gem::Specification.new do |s|
  s.name = "colors"
  s.version = "0.0.2"
  s.date = "2009-06-26"
  s.summary = "Ruby String extesion for colored strings"
  s.email = "apohllo@o2.pl"
  s.homepage = "http://apohllo.pl"
  s.description = "Extensions for String highliting"
  s.has_rdoc = false
  s.authors = ['Aleksander Pohl']
  s.files = ["Rakefile", "colors.gemspec", 'lib/colors.rb', 'lib/colors/string.rb',
    'README.txt', 'features/color.feature']  
  #s.autorequire = 'lib/colors.rb'
  s.test_files = [
    'features/color.feature'
  ]
  s.rdoc_options = ["--main", "README.txt"]
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.txt"]
end

