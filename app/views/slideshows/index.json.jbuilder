json.array!(@slideshows) do |slideshow|
  json.extract! slideshow, :id, :name
  json.url slideshow_url(slideshow, format: :json)
end
