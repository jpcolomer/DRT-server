Rhoconnect.configure do |config|
  config.app_endpoint = ""
  config.authenticate = lambda { |credentials| true}
end