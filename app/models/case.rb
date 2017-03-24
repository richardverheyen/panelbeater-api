# == Schema Information
#
# Table name: cases
#
#  id         :integer          not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Case < ApplicationRecord
end
