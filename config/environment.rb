# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
	:address => 'smtp.sendgrid.net', 
	:port => '587',
	:authentications => :plain,
	:user_name =>['SENDGRID_USERNAME'],
	:password => ['SENDGRID_PASSWORD'],
	:domain => 'heroku.com',
	:enable_startstls_auto => true
}
