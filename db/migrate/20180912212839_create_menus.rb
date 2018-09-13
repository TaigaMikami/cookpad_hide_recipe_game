class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :title
      t.text :recipe
      t.integer :cooking_time
      t.string :image_url
      t.text :taste
      t.text :hint1
      t.text :hint2
      t.text :hint3

      t.timestamps
    end
  end
end
