class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email_address
      t.string :password_digest
      t.integer :phone_number
      t.string :user_type
      t.integer :project_id, index: true, foreign_key: true
      t.integer :group_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
