class AddPersonNumberToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :person_count, :string
  end
end
