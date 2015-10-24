json.array!(@pictures) do |picture|
  json.extract! picture, :id, :name, :image
  json.url picture_url(picture, format: :json)
end
