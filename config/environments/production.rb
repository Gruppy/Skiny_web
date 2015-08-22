Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.serve_static_assets = true
  config.assets.js_compressor = :uglifier
  config.assets.compile = true
  config.assets.digest = true
  config.log_level = :debug
  config.active_record.dump_schema_after_migration = false
  config.force_ssl = true
  GA.tracker = "UA-66412915-1"
end
