json.array!(@projects) do |project|
  json.extract! project, :id, :title, :description, :done, :todo, :authors, :website
  json.url project_url(project, format: :json)
end
