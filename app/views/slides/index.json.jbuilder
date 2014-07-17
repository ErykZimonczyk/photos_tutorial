json.array!(@slides) do |slide|
  json.extract! slide, :id, :position, :photo_id, :slideshow_id
  json.url slide_url(slide, format: :json)
end
