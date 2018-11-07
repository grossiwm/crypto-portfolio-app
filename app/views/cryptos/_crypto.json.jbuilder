json.extract! crypto, :id, :symbol, :user, :cost_per, :amount_owned, :created_at, :updated_at
json.url crypto_url(crypto, format: :json)
