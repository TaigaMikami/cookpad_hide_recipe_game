class Tool < ApplicationRecord
  has_many :menu_tools
  has_many :menus, through: :menu_tools
end
