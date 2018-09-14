puts 'start seed'

File.join(File.dirname(__FILE__), 'seeds').tap do |dir|
  require File.join(dir, 'menus.rb')
  require File.join(dir, 'tools.rb')
  require File.join(dir, 'materials.rb')
  require File.join(dir, 'recipes.rb')
end

Menu.find_by(title: 'アクアパッツァ').tools << Tool.find_by(name: '包丁')
Menu.find_by(title: 'アクアパッツァ').tools << Tool.find_by(name: 'フライパン')
Menu.find_by(title: 'アクアパッツァ').tools << Tool.find_by(name: '鍋蓋')
Menu.find_by(title: 'ラタトゥイユ').tools << Tool.find_by(name: '包丁')
Menu.find_by(title: 'ラタトゥイユ').tools << Tool.find_by(name: '鍋')
Menu.find_by(title: '茶碗蒸し').tools << Tool.find_by(name: '鍋')
Menu.find_by(title: '茶碗蒸し').tools << Tool.find_by(name: '竹串')
Menu.find_by(title: '茶碗蒸し').tools << Tool.find_by(name: '茶碗')
Menu.find_by(title: 'ビーフストロガノフ').tools << Tool.find_by(name: '鍋')
Menu.find_by(title: 'マタンブレ').tools << Tool.find_by(name: 'ラップ')
Menu.find_by(title: 'マタンブレ').tools << Tool.find_by(name: '耐熱容器')
Menu.find_by(title: 'ロッソリ').tools << Tool.find_by(name: 'ジップロック')
Menu.find_by(title: 'ロッソリ').tools << Tool.find_by(name: '電子レンジ')
