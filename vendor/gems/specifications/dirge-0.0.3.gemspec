# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dirge}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joshua Hull"]
  s.date = %q{2009-11-21}
  s.description = %q{Relative require, relative autoload and __DIR__}
  s.email = %q{joshbuddy@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc", "Rakefile", "VERSION", "lib/dirge.rb", "spec/dirge_spec.rb", "spec/test:2test/test.rb"]
  s.homepage = %q{http://github.com/joshbuddy/dirge}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Relative require, relative autoload and __DIR__}
  s.test_files = ["spec/dirge_spec.rb", "spec/test:2test/test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
