json.extract! expense, :id, :date, :amount, :name, :expense_type, :status, :created_at, :updated_at
json.url expense_url(expense, format: :json)
