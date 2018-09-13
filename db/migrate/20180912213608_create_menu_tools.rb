class CreateMenuTools < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_tools do |t|
      t.references :menu, foreign_key: true
      t.references :tool, foreign_key: true

      t.timestamps
    end
  end
end
