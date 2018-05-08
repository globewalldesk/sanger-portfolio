require 'faker'

topic_names = []
5.times do |topic|
  topic_name = ""
  loop do
    topic_name = Faker::ProgrammingLanguage.name
    # Ensure name is unique.
    unless topic_names.include? topic_name
      topic_names.push(topic_name)
      break
    end
  end
  Topic.create!(
           title: topic_name
  )
end

puts '5 topics created'

10.times do |blog|
  Blog.create!(
          title: "#{Faker::MostInterestingManInTheWorld.quote}",
          body: Faker::Lorem.paragraph,
          topic_id: Topic.ids.sample
  )
end

puts '10 blog posts created'

5.times do |skill|
  Skill.create!(
           title: "#{Faker::ProgrammingLanguage.name}",
           percent_utilized: 15
  )
end

puts '5 skills created'

8.times do |portfolio_item|
  Portfolio.create!(
               title: "#{Faker::Internet.domain_name}",
               subtitle: "Ruby on Rails",
               body: Faker::Lorem.sentences(3).join(" "),
               main_image: 'http://via.placeholder.com/600x400',
               thumb_image: 'http://via.placeholder.com/350x200'
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
      title: "#{Faker::Internet.domain_name}",
      subtitle: "Angular",
      body: Faker::Lorem.sentences(3).join(" "),
      main_image: 'http://via.placeholder.com/600x400',
      thumb_image: 'http://via.placeholder.com/350x200'
  )
end

puts '9 portfolios created'

#### NEXT (4/28) GENERATE SSH KEYS IF NECESSARY...USE ON GITHUB