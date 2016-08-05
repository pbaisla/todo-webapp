class TaskMailer < ApplicationMailer
  default from: 'notifications@example.com'
  
  def tasks_for_today(user)
    @user = user
    @tasks = user.tasks.where task_date: Date.today, status: :active
    mail(to: @user.email, subject: 'Tasks for the day')
  end
end
