source 'https://rubygems.org'

# Distribute your app as a gem
# gemspec

# Server requirements
# gem 'thin' # or mongrel
# gem 'trinidad', :platform => 'jruby'

# Optional JSON codec (faster performance)
# gem 'oj

# Project requirements
gem 'rake'

# Component requirements
gem 'erubis', '~> 2.7.0'
gem 'activerecord', '>= 3.1', :require => 'active_record'

# Test requirements
# Padrino Stable Gem
gem 'padrino', '0.12.3'
gem 'puma'
gem 'padrino-sprockets', :require['padrino-sprockets'],
  :git => 'git://github.com/nightsailer/padrino-sprockets.git'
gem 'uglifier'
gem 'yui-compressor'
gem 'json'

group :development, :test do
  gem 'pry'
  gem 'pry-padrino'
  gem 'sqlite3'
  gem 'guard'
end
group :test do
  gem 'spork'
  gem 'factory_girl'
  gem 'rspec', '~>3.0.0'
  gem 'rack-test', :require => 'rack/test'
  gem 'guard-rspec'
end
# Or Padrino Edge
# gem 'padrino', :github => 'padrino/padrino-framework'

# Or Individual Gems
# %w(core support gen helpers cache mailer admin).each do |g|
#   gem 'padrino-' + g, '0.12.3'
# end
