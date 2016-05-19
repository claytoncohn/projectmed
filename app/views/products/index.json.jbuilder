json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :picture, :category, :specs, :price, :product_id, :owner, :rating, :watchers
  json.url product_url(product, format: :json)
end
