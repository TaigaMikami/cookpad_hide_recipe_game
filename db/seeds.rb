puts 'start seed'

File.join(File.dirname(__FILE__), 'seeds').tap do |dir|
  require File.join(dir, 'menus.rb')
  require File.join(dir, 'tools.rb')
  require File.join(dir, 'materials.rb')
  require File.join(dir, 'recipes.rb')
end
