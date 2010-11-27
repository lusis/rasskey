# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rasskey/version"

Gem::Specification.new do |s|
  s.name        = "rasskey"
  s.version     = Rasskey::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["lusis"]
  s.email       = ["lusis.org+rubygems.org@gmail.com"]
  s.homepage    = "http://github.com/lusis/rasskey"
  s.summary     = %q{Small Ruby Library for ASCII drawing}
  s.description = %q{Small Ruby Library for ASCII drawing}

  s.rubyforge_project = "rasskey"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
