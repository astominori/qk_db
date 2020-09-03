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
end
