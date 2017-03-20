JSONAPI.configure do |config|
  config.json_key_format = :camelized_key
  config.route_format = :camelized_route

  config.resource_key_type = :uuid

  config.allow_include = true
  config.allow_sort = true
  config.allow_filter = true

  config.raise_if_parameters_not_allowed = true

  config.default_paginator = :none

  config.top_level_meta_include_record_count = false

  config.top_level_meta_record_count_key = :record_count
end
