json.extract! invoice, :id, :brand_manager, :narration, :invoice_date, :amount, :customer_name, :reference, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
