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

class Case < ApplicationRecord
  # model association
  has_many :comments, dependent: :destroy

  # validations
  validates_presence_of :url
end
