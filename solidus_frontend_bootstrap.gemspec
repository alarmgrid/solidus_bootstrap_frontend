# frozen_string_literal: true

require_relative "lib/solidus_frontend_bootstrap/version"

Gem::Specification.new do |spec|
  spec.name = "solidus_frontend_bootstrap"
  spec.version = SolidusFrontendBootstrap::VERSION
  spec.authors = ["Senem Soy"]
  spec.email = "senem@super.gd"

  spec.summary = "Switches out Solidus’ entire frontend for a bootstrap 3 powered frontend"
  spec.description = spec.summary
  spec.homepage = "https://github.com/solidusio-contrib/solidus_frontend_bootstrap#readme"
  spec.license = "BSD-3-Clause"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/solidusio-contrib/solidus_frontend_bootstrap"
  spec.metadata["changelog_uri"] = "https://github.com/solidusio-contrib/solidus_frontend_bootstrap/blob/master/CHANGELOG.md"

  spec.required_ruby_version = Gem::Requirement.new("< 5")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  files = Dir.chdir(__dir__) { `git ls-files -z`.split("\x0") }

  spec.files = files.grep_v(%r{^(test|spec|features)/})
  spec.test_files = files.grep(%r{^(test|spec|features)/})
  spec.bindir = "exe"
  spec.executables = files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bootstrap-sass"
  spec.add_dependency "bootstrap-kaminari-views"
  spec.add_dependency "sassc-rails"
  spec.add_dependency "solidus_core", ">= 2.11"
  spec.add_dependency "solidus_support", "~> 0.5"

  spec.add_development_dependency "solidus_dev_support", "~> 2.5"
end
