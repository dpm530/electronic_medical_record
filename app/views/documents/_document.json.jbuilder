json.extract! document, :id, :patient_id, :file, :created_at, :updated_at
json.url document_url(document, format: :json)
