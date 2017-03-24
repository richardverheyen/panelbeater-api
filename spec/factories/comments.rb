FactoryGirl.define do
  factory :comment do
    text { Faker::Lorem.sentence(3) }
    todo_id nil
  end
end
