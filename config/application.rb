require_relative "boot"

require "action_controller/railtie"
require "action_view/railtie"

Bundler.require(*Rails.groups)

module ApiTemplatelangCom
  class Application < Rails::Application
    config.load_defaults 7.0
    config.api_only = true
  end
end
