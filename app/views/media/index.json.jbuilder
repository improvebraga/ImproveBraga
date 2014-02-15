json.array!(@media) do |medium|
  json.extract! medium, :id, :title, :description, :site, :date
  json.url medium_url(medium, format: :json)
end
