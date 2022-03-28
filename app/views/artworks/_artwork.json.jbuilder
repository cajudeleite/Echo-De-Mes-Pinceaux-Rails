json.extract! artwork, :id, :title, :year_id, :technique_id, :collection_id, :status_id, :description, :user_id, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
