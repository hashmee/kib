      ActionMailer::Base.delivery_method = :smtp
      ActionMailer::Base.perform_deliveries = true
      ActionMailer::Base.raise_delivery_errors = true
      ActionMailer::Base.smtp_settings = {
          :address => "smtp.gmail.com",
          :port => "587",
          :domain => "heroku.com",
          :enable_starttls_auto => true,
          :authentication => :plain,
          :user_name => "simpledryapp@gmail.com",
          :password => "hashmee786"
      }