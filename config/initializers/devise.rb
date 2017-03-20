# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|

  config.navigational_formats = [:json]
  config.authentication_keys = [:username]
  
end
