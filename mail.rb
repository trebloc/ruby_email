require 'mail'
Mail.defaults do
  delivery_method :smtp, { :address   => "smtp.sendgrid.net",
                           :port      => 587,
                           :domain    => "yourdomain.com",
                           :user_name => "trebloc",
                           :password  => "yourpassword",
                           :authentication => 'plain',
                           :enable_starttls_auto => true }
end

mail = Mail.deliver do
  to 'colbert.tse@gmail.com'
  from 'Colbert Tse <ctse77@alum.berkeley.edu>'
  subject 'Welcome Email'
  text_part do
    body 'Thank you for signing up.'
  end
  html_part do
    content_type 'text/html; charset=UTF-8'
    body '<b>Thank you for signing up.</b>'
  end
end