json.extract! ingredient, :id, :name, :quantity, :unit, :expires_on, :location, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
