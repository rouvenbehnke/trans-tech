# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['MAILGUN_SMTP_LOGIN'],
  :password => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain => 'trans-tech.de',
  :address => ENV['MAILGUN_SMTP_SERVER'],
  :port => ENV['MAILGUN_SMTP_PORT'],
  :authentication => :plain,
}
