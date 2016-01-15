$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'crumbs/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'crumbs'
  s.version     = Crumbs::VERSION
  s.authors     = ['mmontossi']
  s.email       = ['mmontossi@buyin.io']
  s.homepage    = 'https://github.com/mmontossi/crumbs'
  s.summary     = 'Crumbs for rails.'
  s.description = 'Adds a handy crumbs variable available in your views in rails.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.required_ruby_version = '>= 2.0.0'

  s.add_dependency 'rails', (ENV['RAILS_VERSION'] ? "~> #{ENV['RAILS_VERSION']}" : ['>= 4.0.0', '< 4.3.0'])

  if RUBY_PLATFORM == 'java'
    s.add_development_dependency 'activerecord-jdbcsqlite3-adapter', '~> 1.3'
    s.add_development_dependency 'jruby-openssl', '~> 0.9'
  else
    s.add_development_dependency 'sqlite3', '~> 1.3'
  end
end
