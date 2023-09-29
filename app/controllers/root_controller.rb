class RootController < ApplicationController
  def email_notification(root)
    @root = root
    mail(to: @root.email, subject: ' Your Email Subject')
  end
end
