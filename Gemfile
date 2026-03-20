# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

branch = ENV.fetch('SOLIDUS_BRANCH', 'main')
solidus_git, solidus_frontend_git = if (branch == 'main') || (branch >= 'v3.2')
                                      %w[solidusio/solidus solidusio/solidus_frontend]
                                    else
                                      %w[solidusio/solidus] * 2
                                    end
gem 'solidus', github: solidus_git, branch: branch
gem 'solidus_frontend', github: solidus_frontend_git, branch: branch

# Needed to help Bundler figure out how to resolve dependencies,
# otherwise it takes forever to resolve them.
# See https://github.com/bundler/bundler/issues/6677
gem "rails", "~> 8.0"
gem "coffee-script"

# Provides basic authentication functionality for testing parts of your engine
gem "solidus_auth_devise", git: "git@github.com:solidusio/solidus_auth_devise.git"

case ENV["DB"]
when "mysql"
  gem "mysql2"
when "postgresql"
  gem "pg"
else
  gem "sqlite3"
end

group :development, :test do
  gem "standard"
  gem "pry"
end

group :test do
  gem "capybara", require: "capybara/rspec"
  gem "selenium-webdriver"
  gem "database_cleaner"
  gem "email_spec"
  gem "factory_bot_rails"
  gem "ffaker"
  gem "launchy"
  gem "puma"
  gem "rspec-activemodel-mocks"
  gem "rspec-collection_matchers"
  gem "rails-controller-testing"
  gem "rspec-its"
  gem "rspec-rails"
  gem "rspec-retry"
  gem "simplecov"
  gem "webmock"
  gem "poltergeist"
  gem "timecop"
  gem "with_model"
  gem "jquery-validation-rails"
end

gemspec

# Use a local Gemfile to include development dependencies that might not be
# relevant for the project or for other contributors, e.g. pry-byebug.
#
# We use `send` instead of calling `eval_gemfile` to work around an issue with
# how Dependabot parses projects: https://github.com/dependabot/dependabot-core/issues/1658.
send(:eval_gemfile, "Gemfile-local") if File.exist? "Gemfile-local"
