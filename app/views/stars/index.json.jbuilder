json.array!(@stars) do |star|
  json.extract! star, :id, :user_id, :url, :quatation
  json.url star_url(star, format: :json)
end
