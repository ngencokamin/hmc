# frozen_string_literal: true

require_relative "lib/hmc/version"

Gem::Specification.new do |spec|
  spec.name = "hmc"
  spec.version = Hmc::VERSION
  spec.author = "Nix Genco-Kamin"
  spec.email = "ngencokamin@gmail.com"

  spec.summary = "CLI utility to help decide between multiple choices"
  spec.description = "Making decisions is difficult, and I'm very bad at it. This gem is a tool to help decide between any number of options. Returns one or more options out of a provided list of choices. Supports picking entirely at random, or weighting decisions if you're kinda leaning towards one or more options but you're not sure."
  spec.homepage = "https://github.com/ngencokamin/hmc"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "bin"
  spec.executables = ["hmc"]
  spec.require_paths = ["lib"]

  spec.add_dependency "tty-prompt"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rubocop", "~> 1.21"
end
