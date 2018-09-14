menus = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'data', 'menus.json')))

menus.each do |menu|
  menu_titles = Menu.pluck(:title)
  next if menu_titles.include?(menu['title'])
  Menu.create(title: menu['title'], image_url: menu['image_url'], cooking_time: menu['cooking_time'], hint1: menu['hint1'], hint2: menu['hint2'], hint3: menu['hint3'], person_count: menu['person_count'])
end
