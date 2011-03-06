# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{captain_planet}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brad Gessler"]
  s.date = %q{2011-03-05}
  s.description = %q{Captain Planet is a Ruby DSL that makes dealing with Environments much easier.}
  s.email = %q{brad@bradgessler.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "Gemfile",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "captain_planet.gemspec",
     "lib/captain_planet.rb",
     "lib/captain_planet/builder.rb",
     "lib/captain_planet/configurable.rb",
     "lib/captain_planet/environment.rb",
     "spec/captain_planet/builder_spec.rb",
     "spec/captain_planet/configurable_spec.rb",
     "spec/captain_planet/environment_spec.rb",
     "spec/captain_planet_spec.rb",
     "spec/fixtures/super_app/environment.rb",
     "spec/fixtures/super_app/environments/development.rb",
     "spec/fixtures/super_app/environments/production.rb",
     "spec/fixtures/super_app/environments/test.rb",
     "spec/fixtures/web_env.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "vendor/gems/cache/dirge-0.0.3.gem",
     "vendor/gems/environment.rb",
     "vendor/gems/gems/dirge-0.0.3/README.rdoc",
     "vendor/gems/gems/dirge-0.0.3/Rakefile",
     "vendor/gems/gems/dirge-0.0.3/VERSION",
     "vendor/gems/gems/dirge-0.0.3/lib/dirge.rb",
     "vendor/gems/gems/dirge-0.0.3/spec/dirge_spec.rb",
     "vendor/gems/gems/dirge-0.0.3/spec/test:2test/test.rb",
     "vendor/gems/specifications/dirge-0.0.3.gemspec"
  ]
  s.homepage = %q{http://github.com/bradgessler/captain_planet}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{DSL for dealing with environments in Ruby projects}
  s.test_files = [
    "spec/captain_planet/builder_spec.rb",
     "spec/captain_planet/configurable_spec.rb",
     "spec/captain_planet/environment_spec.rb",
     "spec/captain_planet_spec.rb",
     "spec/fixtures/super_app/environment.rb",
     "spec/fixtures/super_app/environments/development.rb",
     "spec/fixtures/super_app/environments/production.rb",
     "spec/fixtures/super_app/environments/test.rb",
     "spec/fixtures/web_env.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end

