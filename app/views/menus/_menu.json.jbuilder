json.extract! menu, :id, :title, :recipe, :cooking_time, :image_url, :taste, :hint1, :hint2, :hint3, :created_at, :updated_at
json.url menu_url(menu, format: :json)
