# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  upload_at  :datetime
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Video < ApplicationRecord
  validates :name, presence: true, length: {maximum: 100}
  validates :url, presence: true

  has_many :video_member_relations
  has_many :members, through: :video_member_relations
end
