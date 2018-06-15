# -*- encoding: utf-8 -*-
# stub: capistrano 2.15.9 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano".freeze
  s.version = "2.15.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jamis Buck".freeze, "Lee Hambley".freeze]
  s.date = "2016-06-27"
  s.description = "Capistrano is a utility and framework for executing commands in parallel on multiple remote machines, via SSH.".freeze
  s.email = ["jamis@jamisbuck.org".freeze, "lee.hambley@gmail.com".freeze]
  s.executables = ["cap".freeze, "capify".freeze]
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze, "bin/cap".freeze, "bin/capify".freeze]
  s.homepage = "http://github.com/capistrano/capistrano".freeze
  s.rubygems_version = "2.7.3".freeze
  s.summary = "Capistrano - Welcome to easy deployment with Ruby over SSH".freeze

  s.installed_by_version = "2.7.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<highline>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<net-ssh>.freeze, [">= 2.0.14"])
      s.add_runtime_dependency(%q<net-sftp>.freeze, [">= 2.0.0"])
      s.add_runtime_dependency(%q<net-scp>.freeze, [">= 1.0.0"])
      s.add_runtime_dependency(%q<net-ssh-gateway>.freeze, [">= 1.1.0"])
      s.add_development_dependency(%q<mocha>.freeze, ["= 0.9.12"])
    else
      s.add_dependency(%q<highline>.freeze, [">= 0"])
      s.add_dependency(%q<net-ssh>.freeze, [">= 2.0.14"])
      s.add_dependency(%q<net-sftp>.freeze, [">= 2.0.0"])
      s.add_dependency(%q<net-scp>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<net-ssh-gateway>.freeze, [">= 1.1.0"])
      s.add_dependency(%q<mocha>.freeze, ["= 0.9.12"])
    end
  else
    s.add_dependency(%q<highline>.freeze, [">= 0"])
    s.add_dependency(%q<net-ssh>.freeze, [">= 2.0.14"])
    s.add_dependency(%q<net-sftp>.freeze, [">= 2.0.0"])
    s.add_dependency(%q<net-scp>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<net-ssh-gateway>.freeze, [">= 1.1.0"])
    s.add_dependency(%q<mocha>.freeze, ["= 0.9.12"])
  end
end
