# using SendGrid's Ruby Library
# https://github.com/sendgrid/sendgrid-ruby
require 'sendgrid-ruby'

sendgrid = SendGrid::Client.new do |c|
  c.api_key = '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'
end

email = SendGrid::Mail.new do |m|
  m.to      = 'colbert.tse@gmail.com'
  m.from    = 'ctse77@alum.berkeley.edu'
  m.subject = 'Sending with Ruby is Fun!'
  m.html    = 'Hello World! and easy to do anywhere!'
end

sendgrid.send(email)