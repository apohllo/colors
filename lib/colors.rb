# encoding: utf-8
Dir.glob(File.join(File.dirname(__FILE__), 'colors/**.rb')).sort.each { |f| require f }
