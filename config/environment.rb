# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Depot::Application.configure do 
	config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
  	address: 							"agibson@gibsonusa.net",
  	port: 		 						587,
  	domain:	 							"depot@example.net",
  	authenication:  			"plain",
  	user_name: 						"Alex",
  	password: 						"password",
  	enable_starttls_auto: true
  }
end
