class RemoveRecipeFromMenu < ActiveRecord::Migration[5.2]
  def change
    remove_column :menus, :recipe, :text
  end
end
