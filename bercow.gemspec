# -*- encoding: utf-8 -*-
lib = File.expand_path '../lib/', __FILE__
$:.unshift lib unless $:.include? lib

require 'bercow/version'

Gem::Specification.new do |s|
  s.name        = "bercow"
  s.version     = Bercow::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Craig R Webster"]
  s.email       = ["craig@barkingiguana.com"]
  s.summary     = ""
  s.description = ""

  s.files       = Dir.glob("{lib,bin}/**/*") + %w(README.md)
  s.executables = Dir.glob("bin/**/*").map { |bin| bin.gsub(/^bin\//, '') }

  s.add_dependency 'stomp'
  s.add_dependency 'nokogiri'
  s.requirements << 'A broker capable of talking Stomp'
  s.requirements << 'A King server'
end
