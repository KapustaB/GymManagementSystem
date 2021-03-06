desc "This task is called by the Heroku scheduler add-on"

task :update_user_memberships => :environment do
  puts "Cheking user memberships..."
  UserMembershipCheckJob.perform_later
  puts "done."
end

task :send_reminders => :environment do
  MembershipNoticeMailsenderJob.perform_later
end

task :send_birthday_notices => :environment do
  UserBirthdayMailsenderJob.perform_later
end