class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.smtp_settings[:user_name]
  layout 'mailer'
end
