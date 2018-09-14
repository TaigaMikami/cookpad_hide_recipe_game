class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.text :content
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
