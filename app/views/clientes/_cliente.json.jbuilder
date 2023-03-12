json.extract! cliente, :id, :name, :email, :whatsapp, :contacto, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
