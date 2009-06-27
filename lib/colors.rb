# encoding: utf-8
Dir.glob(File.join(File.dirname(__FILE__), 'nlp/**.rb')).sort.each { |f| require f }
