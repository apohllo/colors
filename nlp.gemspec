Gem::Specification.new do |s|
  s.name = "nlp"
  s.version = "0.0.1"
  s.date = "2008-10-23"
  s.summary = "Ruby core classes extesions for use with NLP"
  s.email = "apohllo@o2.pl"
  s.homepage = "http://apohllo.pl"
  s.description = "Extensions for Symbol (arbitrary string representation) and String (conversion, highliting)"
  s.has_rdoc = false
  s.authors = ['Aleksander Pohl']
  s.files = ["Rakefile", "nlp.gemspec", 'lib/nlp.rb', 'lib/nlp/string.rb','lib/nlp/symbol.rb']  
  #s.autorequire = 'lib/nlp.rb'
  s.test_files = []
  #s.rdoc_options = ["--main", "README.txt"]
  #s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
end

