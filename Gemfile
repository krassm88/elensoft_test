source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bcrypt'

gem 'jbuilder', '~> 2.5'

gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'

gem 'rails', '~> 5.1.5'
gem 'rails-i18n'

gem 'slim-rails'

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'warden'
gem 'webpacker'

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  gem 'ffaker'

  gem 'pry-byebug'
  gem 'pry-rails'
end

group :test do
  gem 'factory_bot_rails'
  
  gem 'rails-controller-testing'
  gem 'rspec-rails'

  gem 'shoulda-matchers', '~> 3.1'
end


