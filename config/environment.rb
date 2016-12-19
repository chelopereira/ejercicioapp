# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.smtp_settings = {
  :user_name => 'probandocorreo87@gmail.com', #usuario que utilizamos para enviar el correo
  :password => 'abcabc87', #contraseña de la cuenta
  :domain => 'gmail.com',
  :address => 'smtp.gmail.com',
  :port => 587, # puerto que siempre se utiliza
  :authentication => :plain,
  :enable_starttls_auto => true }