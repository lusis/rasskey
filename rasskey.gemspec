# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rasskey}
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["lusis"]
  s.date = %q{2010-11-30}
  s.description = %q{Small Ruby library for ASCII drawing}
  s.email = %q{lusis.org+rubygems.org@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "features/rasskey.feature",
    "features/step_definitions/rasskey_steps.rb",
    "features/support/env.rb",
    "lib/rasskey.rb",
    "lib/rasskey/box.rb",
    "lib/rasskey/extensions/string.rb",
    "lib/rasskey/line.rb",
    "lib/rasskey/version.rb",
    "rasskey.gemspec",
    "spec/rasskey_box_spec.rb",
    "spec/rasskey_line_spec.rb",
    "spec/rasskey_string_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/lusis/rasskey}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Small Ruby library for ASCII drawing}
  s.test_files = [
    "spec/rasskey_box_spec.rb",
    "spec/rasskey_line_spec.rb",
    "spec/rasskey_string_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.1.0"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.1.0"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.1.0"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

