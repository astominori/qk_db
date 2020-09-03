class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name, nil: false

      t.timestamps
    end
  end
end
