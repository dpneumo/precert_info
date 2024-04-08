# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


https://github.com/mailhog/MailHog
	
	Run the .exe (saved at C:/MailHog/MailHog_windows_amd64.exe)
	MailHog serves at: 127.0.0.1:8025

	config/environments/development.rb:
	  # For Mail Catcher & Mail Hog
	  config.action_mailer.delivery_method = :smtp
	  config.action_mailer.smtp_settings = { :address => "127.0.0.1", :port => 1025 }
