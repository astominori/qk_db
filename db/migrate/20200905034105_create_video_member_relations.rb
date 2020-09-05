class CreateVideoMemberRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :video_member_relations do |t|
      t.references :video, foreign_key: true, type: :integer
      t.references :member, foreign_key: true, type: :integer

      t.timestamps
    end
  end
end
