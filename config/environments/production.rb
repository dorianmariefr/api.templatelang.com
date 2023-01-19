require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.active_support.report_deprecations = false
  config.cache_classes = true
  config.consider_all_requests_local = false
  config.eager_load = true
  config.i18n.fallbacks = true
  config.log_formatter = ::Logger::Formatter.new
  config.log_level = :info
  config.log_tags = [:request_id]
  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?
  config.require_master_key = true
  logger = ActiveSupport::Logger.new(STDOUT)
  logger.formatter = config.log_formatter
  config.logger = ActiveSupport::TaggedLogging.new(logger)
end
