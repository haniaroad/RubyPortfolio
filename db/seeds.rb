# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
    Blog.create!(
    title: "Blog number #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer aliquam hendrerit diam at bibendum. Ut dapibus nisi sed leo vehicula bibendum. Praesent gravida lobortis ante, nec accumsan nibh aliquet ac. Nunc eu interdum tortor. Phasellus non diam sagittis, facilisis lacus quis, accumsan ipsum. Quisque quis urna leo. Quisque porttitor ultrices ipsum a malesuada. In at metus faucibus, feugiat metus eget, tincidunt metus. Phasellus sed lacinia neque. Curabitur eu egestas arcu. Sed scelerisque dui in diam egestas suscipit."
    )
end

puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent: 15
    )
    end

puts "5 skills created"


9.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio title #{portfolio}",
        subtitle: "Awesome subtitle",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer aliquam hendrerit diam at bibendum. Ut dapibus nisi sed leo vehicula bibendum. Praesent gravida lobortis ante, nec accumsan nibh aliquet ac. Nunc eu interdum tortor. Phasellus non diam sagittis, facilisis lacus quis, accumsan ipsum. Quisque quis urna leo. Quisque porttitor ultrices ipsum a malesuada. In at metus faucibus, feugiat metus eget, tincidunt metus. Phasellus sed lacinia neque. Curabitur eu egestas arcu. Sed scelerisque dui in diam egestas suscipit.",
        image: "https://via.placeholder.com/600x400",
        thumbimage: "https://via.placeholder.com/350x200"
    )
end

puts "9 portfolio items created"