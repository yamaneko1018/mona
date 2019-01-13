require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

#ActiveRecord::SessionStore::Session.table_name = 'legacy_session_table'
#ActiveRecord::SessionStore::Session.primary_key = 'session_id'
#ActiveRecord::SessionStore::Session.data_column_name = 'legacy_session_data'
#ActiveRecord::SessionStore::Session.serializer = :json






module Mona
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
