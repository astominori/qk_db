class AddCategoryToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :category, :string, nil: false
    add_column :members, :birthday, :date
  end
end
