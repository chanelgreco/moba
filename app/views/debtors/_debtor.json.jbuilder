json.extract! debtor, :id, :name, :contact, :email, :created_at, :updated_at
json.url debtor_url(debtor, format: :json)
