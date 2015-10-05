# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smpt_settings = {
	:address => 'smpt.sendgrid.net', 
	:port => '587',
	:authentications => :plain,
	:user_name =>['SENDGRID_USERNAME'],
	:password => ['SENDGRID_PASSWORD'],
	:domain => 'heroku.com',
	:enable_startstls_auto => true
}
