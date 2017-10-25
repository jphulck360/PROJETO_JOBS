json.extract! message, :id, :msg, :data, :hora, :status, :created_at, :updated_at
json.url message_url(message, format: :json)
