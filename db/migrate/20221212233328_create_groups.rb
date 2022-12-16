class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.integer :user_id
      t.integer :project_id
      t.string :group_members

      t.timestamps
    end
  end
end
