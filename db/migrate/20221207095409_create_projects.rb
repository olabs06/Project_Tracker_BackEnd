class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :cohort
      t.string :link
      t.string :description

      t.timestamps
    end
  end
end
