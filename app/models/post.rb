# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  item       :string           not null
#  rank       :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  validates :item, :rank, presence: true
  
end
