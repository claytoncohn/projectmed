class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@projectmed.com"
  layout 'mailer'
end
