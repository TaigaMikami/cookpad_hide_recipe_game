tools = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'data', 'tools.json')))

tools.each do |tool|
  tool_names = Tool.pluck(:name)
  next if tool_names.include?(tool['name'])
  Tool.create(name: tool['name'])
end
