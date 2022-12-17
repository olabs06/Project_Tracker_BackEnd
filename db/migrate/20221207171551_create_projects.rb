class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :cohort
      t.string :image_url
      t.string :github_link
      t.text :description
      
      t.timestamps
    end
  end
end
