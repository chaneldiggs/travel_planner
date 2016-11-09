json.extract! contact, :id, :name, :phone_number, :email, :em_contact, :notes, :image, :created_at, :updated_at
json.url contact_url(contact, format: :json)