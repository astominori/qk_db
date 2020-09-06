# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  birthday   :date
#  category   :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Member < ApplicationRecord
  validates :name, presence: true, length: { maximum: 10 }
  validates :category, presence: true
  has_many :video_member_relations
  has_many :videos, through: :video_member_relations

end
