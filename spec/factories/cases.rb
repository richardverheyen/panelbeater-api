FactoryGirl.define do
  factory :case do
    url { Faker::Internet.url }
  end
end
