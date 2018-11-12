# frozen_string_literal: true

space_x = Company.create! name: 'Space X', domain: 'spacex.com'
tesla = Company.create! name: 'Tesla', domain: 'Tesla'
apple = Company.create! name: 'Apple', domain: 'Apple'
google = Company.create! name: 'Google', domain: 'Google'
amazon = Company.create! name: 'Amazon', domain: 'Amazon'

[space_x, tesla, apple, google, amazon].each do |company|
  %w[sue john mary arthur].each do |username|
    email = "#{username}@#{company.domain}"
    User.create!(email: email, password: 'password')
  end

  name = '2018 plan'
  content = "#{company.name}'s plan for the year 2018"
  Document.create!(company: company, name: name, content: content)

  name = 'The next big thing'
  technologies = %w[VR AI Wearables Streaming\ Videos Voice\ Assistants]
  mediums = %w[in\ space in\ hovercrafts on\ a\ remote\ island for\ cats]
  big_thing = "#{technologies.sample} #{mediums.sample}"
  content = "The next big thing is something only #{company.name} can do: #{big_thing}."
  Document.create!(company: company, name: name, content: content)
end
