# using SendGrid's Ruby Library
# https://github.com/sendgrid/sendgrid-ruby
require 'sendgrid-ruby'

sendgrid = SendGrid::Client.new do |c|
  c.api_key = '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'
end

email = SendGrid::Mail.new do |m|
  m.to      = 'colbert.tse@gmail.com'
  m.from    = 'ctse77@alum.berkeley.edu'
  m.subject = 'Sending with SendGrid is Fun'
  m.html    = 'and easy to do anywhere, even with Ruby'
end

sendgrid.send(email)