class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :slug
      t.string :miniature
      t.integer :project_category_id
      t.text :abstract
      t.integer :location_id
      t.text :video
      t.text :description
      t.text :challenges

      t.timestamps
    end
  end
end
