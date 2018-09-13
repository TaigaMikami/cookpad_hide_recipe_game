class Menu < ApplicationRecord
  has_many :materials
  has_many :menu_tools
  has_many :tools, through: :menu_tools
  accepts_nested_attributes_for :menu_tools
end
