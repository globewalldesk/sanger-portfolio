require 'faker'

10.times do |blog|
  Blog.create!(
          title: "#{Faker::MostInterestingManInTheWorld.quote} #{blog}",
          body: Faker::Lorem.paragraph
  )
end

puts '10 blog posts created'

5.times do |skill|
  Skill.create!(
           title: "#{Faker::ProgrammingLanguage.name} #{skill}",
           percent_utilized: 15
  )
end

puts '5 skills created'

9.times do |portfolio_item|
  Portfolio.create!(
               title: "#{Faker::Internet.domain_name}  #{portfolio_item}",
               subtitle: Faker::Job.key_skill,
               body: Faker::Lorem.sentence(2),
               main_image: 'http://via.placeholder.com/600x400',
               thumb_image: 'http://via.placeholder.com/350x200'
  )
end

puts '9 portfolios created'
