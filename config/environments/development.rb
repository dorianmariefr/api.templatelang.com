require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.action_controller.perform_caching = false
  config.action_view.annotate_rendered_view_with_filenames = true
  config.active_support.deprecation = :log
  config.active_support.disallowed_deprecation = :raise
  config.active_support.disallowed_deprecation_warnings = []
  config.cache_classes = false
  config.cache_store = :null_store
  config.consider_all_requests_local = true
  config.eager_load = false
  config.i18n.raise_on_missing_translations = true
  config.server_timing = true
end
