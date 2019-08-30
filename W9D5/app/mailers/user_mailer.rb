class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    mail(to: 'test@email.com', subject: 'Welcome to 99 Cats') #user does not have an email atm
  end
end
