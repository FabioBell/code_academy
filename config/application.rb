require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CodeAcademy
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.generators do |generate|
      generate.test_framework false
      generate.assets false # create assets when generating a scaffold
      # generate.force_plural false # allow pluralized model names
      generate.helper false # generate helpers
      # generate.integration_tool :test_unit # which tool generates integration tests (might be overwritten automatically if using rspec-rails)
      # generate.system_tests :test_unit # which tool generates system tests (might be overwritten automatically if using rspec-rails)
      # generate.orm false # which orm to use (false uses Active Record)
      # generate.resource_controller :controller # which generator generates a controller when using bin/rails generate resource
      # generate.resource_route true # generate a resource route definition
      # generate.scaffold_controller :scaffold_controller # which generator generates a controller when using bin/rails generate scaffold
      generate.stylesheets false # generate stylesheets
      # generate.stylesheet_engine :css # configures the stylesheet engine (for e.g. sass) to be used when generating assets. Defaults to :css.
      # generate.scaffold_stylesheet true # creates scaffold.css when generating a scaffolded resource. Defaults to true.
      generate.test_framework false # which test framework to use (false uses Minitest) (might be overwritten automatically if using rspec-rails)
      # generate.template_engine :erb # which template engine to use
    end
  end
end
