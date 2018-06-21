namespace :app do
  desc "Gives a summary of the depot application"
  task about: :environment do
  	puts "\n" + "The depot application built by following Agile Web Development with Rails 5 by Sam Ruby, Dave Thomas, " +
  			 "& David Heinemeier Hansson from:"
  	puts "https://pragprog.com/book/rails5/agile-web-development-with-rails-5"
  end
end
