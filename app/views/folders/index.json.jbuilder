json.array!(@folders) do |folder|
  json.extract! folder, :id, :name, :image_url, :desc, :visible
  json.url folder_url(folder, format: :json)
end
