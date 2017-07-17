class UserMailer < ApplicationMailer
 
	  def welcome_email(user)
	    @user = user

	    mail to: @user.email, subject: 'GET S C A M M E D'
	  end
end
