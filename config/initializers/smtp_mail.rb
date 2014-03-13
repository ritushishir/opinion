ActionMailer::Base.smtp_settings = {
  :user_name => "",
  :password => "",
  :domain => "yell.cloudfactory.com",
  :address => "smtp.gmail.com",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}