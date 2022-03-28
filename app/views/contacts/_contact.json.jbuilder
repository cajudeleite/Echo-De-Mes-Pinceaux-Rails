json.extract! contact, :id, :last_name, :first_name, :e_mail, :title, :message, :created_at, :updated_at
json.url contact_url(contact, format: :json)
