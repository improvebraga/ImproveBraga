json.array!(@projects_editions) do |projects_edition|
  json.extract! projects_edition, :id, :project_id, :edition_id
  json.url projects_edition_url(projects_edition, format: :json)
end
