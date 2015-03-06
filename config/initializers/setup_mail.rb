      ActionMailer::Base.delivery_method = :smtp
      ActionMailer::Base.perform_deliveries = true
      ActionMailer::Base.raise_delivery_errors = true
      ActionMailer::Base.smtp_settings = {
          :address => "smtp.mailgun.org",
          :port => "587",
          :domain => "mailgun.org",
          :enable_starttls_auto => true,
          :authentication => :plain,
          :user_name => "postmaster@sandbox38da4bde75a448e997685d1361edf629.mailgun.org",
          :password => "dfc22b2ad70f279c5c7b20820e33dd7e"
      }