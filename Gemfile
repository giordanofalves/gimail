source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.20.0'
gem 'simple_form', '~> 3.4.0'
gem 'devise', '~> 4.2.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails', '~> 4.3.1'
gem 'turbolinks', '~> 5'
gem 'wysiwyg-rails', '~> 2.5.1'
gem 'select2-rails'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-byebug', '~> 3.4.2'
  gem 'rspec-rails', '~> 3.5.2'
  gem 'factory_girl_rails', '~> 4.8.0'
  gem 'faker', '~> 1.7.3'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '~> 2.13.0'
  gem 'shoulda-matchers', '~> 3.1.1'
  gem 'rails-controller-testing', '~> 1.0.1'
  gem 'simplecov', '~> 0.14.1', require: false
  gem 'codeclimate-test-reporter'
end
