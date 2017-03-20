class Api::V1::ApplicationResource < JSONAPI::Resource
  abstract
  def meta(options)
    { copyright: "© #{Time.now.year} CSM BPI Automation" }
  end
end
