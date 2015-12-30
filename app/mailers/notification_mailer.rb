class NotificationMailer < ActionMailer::Base
  default from: "from@example.com"

  def comment_added
  	mail(to:"victoria_broaurd@hotmail.co.uk",
  		subject: "A comment has been added to your place")
  end

end
