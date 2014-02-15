json.array!(@editions) do |edition|
  json.extract! edition, :id, :date, :local, :photos, :newsletter
  json.url edition_url(edition, format: :json)
end
