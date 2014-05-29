class UserMailer < ActionMailer::Base
  def consultant_reminder(user)
    @user = user
    mail( :from => "admin@thcc.or.th",
          :to => ["#{user.fname} <#{user.email}>"],
          :subject => "ICD10Forum Notification",
          :cc => ["titasak@gmail.com","bunk_kie@hotmail.com"]
        )
  end
end

