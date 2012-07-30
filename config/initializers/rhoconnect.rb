Rhoconnect.configure do |config|
  config.app_endpoint = "http://protected-ocean-7054.herokuapp.com"
  config.authenticate = lambda { |credentials| User.authenticate(credentials['login'], credentials['password'])}
end