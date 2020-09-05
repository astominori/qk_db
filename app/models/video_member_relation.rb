# == Schema Information
#
# Table name: video_member_relations
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :integer
#  video_id   :integer
#
# Indexes
#
#  index_video_member_relations_on_member_id  (member_id)
#  index_video_member_relations_on_video_id   (video_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#  fk_rails_...  (video_id => videos.id)
#
class VideoMemberRelation < ApplicationRecord
  belongs_to :video
  belongs_to :member
end
