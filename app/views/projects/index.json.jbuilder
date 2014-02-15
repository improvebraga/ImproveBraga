json.array!(@projects) do |project|
  json.extract! project, :id, :title, :description, :done, :to-do, :authors, :website
  json.url project_url(project, format: :json)
end
