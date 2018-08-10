# frozen_string_literal: true

# def mig_dates
#   ActiveRecord::Base.connection.select_values("select * from schema_migrations").sort
# end
#
# def mig_paths
#   Rails.root.join("db/migrate").children
# end
#
# mig_f_date = mig_dates.map { |j| j.to_time.strftime("%B-%d-%Y %H:%M:%S") }
# mig_u_date = mig_dates.map(&:to_s)
#
# mig_name = mig_paths.sort.map { |i| [i.to_s[58..150]] }
# mig_num = mig_paths.count
#
# namespace :db do
#   desc "Prints the ordered migration versions"
#   task schema_migrations: :environment do
#     puts "\n", "There are #{mig_num} migrations created for this application."
#     puts "Run `rake db:migrate:status` to view the direction status of each.", "\n"
#     for k in 0...mig_num
#       mig_sep_k_ones = (k + 1).to_s + ": ------------------------------"
#       mig_sep_k_tens = (k + 1).to_s + ": -----------------------------"
#       puts k < 10 ? mig_sep_k_ones : mig_sep_k_tens,
#         "Formatted Date: " + mig_f_date[k],
#         "Unformatted Date: " + mig_u_date[k],
#         "Filename: " + mig_name[k].first,
#         "\n"
#     end
#   end
# end
