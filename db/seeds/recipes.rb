recipes = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'data', 'recipes.json')))

recipes.each do |recipe|
  recipe_titles = Recipe.pluck(:content)
  next if recipe_titles.include?(recipe['content'])
  Recipe.create(content: recipe['content'], menu_id: recipe['menu_id'])
end
