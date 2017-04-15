# == Schema Information
#
# Table name: cases
#
#  id         :integer          not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string
#

FactoryGirl.define do
  factory :case do
    url { Faker::Internet.url }
  end
end
