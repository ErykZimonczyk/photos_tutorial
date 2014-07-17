json.array!(@photos) do |photo|
  json.extract! photo, :id, :filename, :thumbnail, :description
  json.url photo_url(photo, format: :json)
end
