require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module DeployTest
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.assets.precompile += Ckeditor.assets
    config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
    config.active_record.default_timezone = :local
    config.time_zone = 'Eastern Time (US & Canada)'
  end
end
