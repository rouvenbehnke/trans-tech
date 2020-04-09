# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.smtp_settings = {
  :user_name => ENV['EMAIL_USER'],
  :password => ENV['EMAIL_PASSWORD'],
  :domain => 'trans-tech.de',
  :address => 'smtp.strato.de',
  :port => 587,
  :authentication => :plain,
}
