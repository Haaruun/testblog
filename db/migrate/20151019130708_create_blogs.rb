class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :title
      t.string :description 	
      t.timestamps null: false
    end
  end
end
