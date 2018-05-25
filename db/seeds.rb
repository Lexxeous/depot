# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
#...
Product.create(title: 'Seven Mobile Apps in Seven Weeks',
  description:
    "<p>
      <strong><em>Native Apps, Multiple Platforms:</em></strong>
      Answer the question “Can we build this for ALL the devices?” with a
      resounding YES. This book will help you get there with a real-world
      introduction to seven platforms, whether you’re new to mobile or an
      experienced developer needing to expand your options. Plus, you’ll find
      out which cross-platform solution makes the most sense for your needs.
      </p>",
  image_url: '7apps.jpg',
price: 25)

Product.create(title: 'Ruby Performance Optimization',
  description:
    "<p>
      <strong><em>Why Your Ruby is Slow and How to Fit It:</em></strong>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vitae rhoncus ipsum. 
      Integer mollis diam dolor, et condimentum erat posuere eu. Suspendisse vel finibus lectus. 
      Etiam ornare sodales malesuada. Praesent molestie a ex ut placerat. Nulla quis dictum arcu. 
      Donec sodales in purus nec vestibulum. Praesent posuere ipsum vitae leo congue fringilla. 
      Cras vehicula risus lectus, et tempus dui lobortis at. Phasellus facilisis non nibh id aliquam. 
      Fusce ut purus id nisl porttitor volutpat in feugiat erat. Vestibulum pretium, lectus vitae tempus suscipit, 
      turpis mauris pharetra metus, ut placerat elit ante id quam.
      </p>",
  image_url: 'adrpo.jpg',
price: 30)

Product.create(title: 'Rails Angular Postgres Bootstrap',
  description:
    "<p>
      <strong><em>Interfacing RoR with Bootstrap:</em></strong>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vitae rhoncus ipsum. 
      Integer mollis diam dolor, et condimentum erat posuere eu. Suspendisse vel finibus lectus. 
      Etiam ornare sodales malesuada. Praesent molestie a ex ut placerat. Nulla quis dictum arcu. 
      Donec sodales in purus nec vestibulum. Praesent posuere ipsum vitae leo congue fringilla. 
      Cras vehicula risus lectus, et tempus dui lobortis at. Phasellus facilisis non nibh id aliquam. 
      Fusce ut purus id nisl porttitor volutpat in feugiat erat. Vestibulum pretium, lectus vitae tempus suscipit, 
      turpis mauris pharetra metus, ut placerat elit ante id quam.
      </p>",
  image_url: 'dcbang.jpg',
price: 35)

Product.create(title: 'Agile Web Development with Rails 5',
  description:
    "<p>
      <strong><em>Learn RoR5 from the Ground Up:</em></strong>
      Have you ever wanted an in depth look at how a high level language like Ruby and a web
      front end interface like Rails can work together to create beautiful websites while also 
      using tools like HTML, CSS, and YAML? Well...look no further. <em>Agile Web Development with Rails 5</em>
      offers step by step instructions for installing Ruby, Rails, Gems, and all thier dependencies as well as
      walking through a complex project that teaches almost everything you could ever learn about using
      Ruby on Rails (RoR). So what are you waiting for? Learn to be a web developer, it's easier
      that you think!
      </p>",
  image_url: 'rails5.jpg',
price: 1000000000)
