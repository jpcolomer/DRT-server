Rhoconnect.configure do |config|
  config.app_endpoint = "http://peaceful-cliffs-7031.herokuapp.com"
  config.authenticate = lambda { |credentials| User.authenticate(credentials['login'], credentials['password'])}
end