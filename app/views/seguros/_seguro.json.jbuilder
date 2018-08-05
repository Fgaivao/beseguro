json.extract! seguro, :id, :name, :description, :image, :tipo, :created_at, :updated_at
json.url seguro_url(seguro, format: :json)
