json.extract! game, :id, :title, :price, :description, :like, :created_at, :updated_at
json.url game_url(game, format: :json)
