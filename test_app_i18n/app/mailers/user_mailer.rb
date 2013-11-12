class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  def welcome(user)
    @user = user
    @url  = 'http://localhost:3000/'
    mail(to: @user.email)
  end
end
