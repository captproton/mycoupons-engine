# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
DeviseExample::Application.initialize!
config.action_mailer.default_url_options = { :host => 'mycoupons.heroku.com' }
