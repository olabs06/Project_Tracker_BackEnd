class CreateCohorts < ActiveRecord::Migration[7.0]
  def change
    create_table :cohorts do |t|
      t.string :year
      t.string :user_id

      t.timestamps
    end
  end
end
