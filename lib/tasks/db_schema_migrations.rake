mig_time = ActiveRecord::Base.connection.select_values('select * from schema_migrations' ).map { |j| [j.to_time.strftime("%B-%d-%Y %H:%M:%S"), j.to_s] }
mig_name = Rails.root.join("db/migrate").children.map { |i| [i.to_s[52..100]] }
mig_num = Rails.root.join("db/migrate").children.count
namespace :db do
  desc "Prints the ordered migration versions"
  task :schema_migrations => :environment do
  	puts "\n", "There are #{mig_num} migrations created for this application."
  	puts "Run 'rake db:migrate:status' to view the direction status of each.", "\n"
  	for k in 0...mig_num
  		mig_sep_k_ones = (k+1).to_s + ": ------------------------------"
  		mig_sep_k_tens = (k+1).to_s + ": -----------------------------"
  		mig_sep_k_huns = (k+1).to_s + ": ----------------------------"
  		puts k < 10 ? mig_sep_k_ones : mig_sep_k_tens, mig_time[k], mig_name[k], "\n"
		end
  end
end