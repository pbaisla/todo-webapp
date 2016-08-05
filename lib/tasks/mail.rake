namespace :mail do

  desc "Send email to users"

  task :email_sender => :environment do |_, args|
    User.find_each do |user|
      TaskMailer.tasks_for_today(user).deliver
    end
  end

end
