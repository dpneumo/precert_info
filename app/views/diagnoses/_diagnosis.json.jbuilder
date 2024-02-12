json.extract! diagnosis, :id, :name, :icd10, :created_at, :updated_at
json.url diagnosis_url(diagnosis, format: :json)
