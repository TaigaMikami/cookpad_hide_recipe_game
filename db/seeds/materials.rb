materials = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'data', 'materials.json')))

materials.each do |material|
  # material_names = Material.pluck(:name)
  # next if material_names.include?(material['name'])
  Material.create(name: material['name'], quantity: material['quantity'], menu_id: 1)
end
