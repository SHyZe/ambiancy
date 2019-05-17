source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

## AJOUT PERSONNEL
gem 'bootstrap', '~> 4.3', '>= 4.3.1'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'paperclip', '~> 6.1'
gem 'simple_form', '~> 4.1'
gem 'devise', '~> 4.6', '>= 4.6.2'
gem 'friendly_id', '~> 5.2', '>= 5.2.5'
gem 'acts-as-taggable-on', '~> 6.0'
gem 'acts_as_votable', '~> 0.12.0'
gem 'tinymce-rails', '~> 5.0', '>= 5.0.5'
gem 'ionicons-rails', '~> 2.0'
gem 'rails_12factor', group: :production

gem 'activeadmin', '~> 2.0'
gem 'activeadmin-poro-decorator', '~> 0.2.0'
gem 'active_admin_editor', github: 'boontdustie/active_admin_editor'
gem 'active_admin_theme', '~> 1.0', '>= 1.0.3'

## BASE
gem 'rails', '~> 5.2.3'
gem 'pg'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
# gem 'duktape'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# gem 'redis', '~> 4.0'
# gem 'bcrypt', '~> 3.1.7'
# gem 'mini_magick', '~> 4.8'
# gem 'capistrano-rails', group: :development
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'faker', '~> 1.9', '>= 1.9.3'
end

group :development do
  # Detects security vulnerabilities in 
  # Ruby on Rails applications via static analysis
  # brakeman -p your_rails_app
  gem 'brakeman', '~> 4.4'
  gem 'web-console', '>= 3.3.0'
  # Auto Actualisation de la page via le plugin chrome LiveReload
  gem 'guard', '~> 2.15'
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2'
  # Décoration de l'affichage des erreurs sur la page
  gem 'better_errors', '~> 2.5'
  gem 'binding_of_caller', '~> 0.8.0'
  # Décoration de la console
  gem 'hirb', '~> 0.7.3'
end
gem 'wdm', '>= 0.1.1' if Gem.win_platform?

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
