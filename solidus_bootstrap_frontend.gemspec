# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_bootstrap_frontend'
  s.version     = '1.1'
  s.summary     = 'Switches out Solidus’ entire frontend for a bootstrap 3 powered frontend'
  s.description = s.summary

  s.author    = 'Alex James'
  s.email     = 'alex.james@200creative.com'
  s.homepage  = 'http://www.200creative.com'
  s.license   = 'BSD-3'

  s.files = Dir['README.md', 'lib/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'
  s.required_ruby_version     = '>= 1.9.3'
  s.required_rubygems_version = '>= 1.8.23'

  s.add_runtime_dependency 'solidus', '>= 1.0'
  s.add_runtime_dependency 'solidus_auth_devise', '>= 1.0'
  s.add_runtime_dependency 'solidus_bootstrap'
  s.add_runtime_dependency 'solidus_auth_devise_bootstrap'
end
