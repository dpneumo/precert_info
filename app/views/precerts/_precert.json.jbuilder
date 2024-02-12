json.extract! precert, :id, :patientMRN, :diagnosis_id, :insurer_id, :provider_id, :service_id, :submitted, :approved, :confirmation, :note, :created_at, :updated_at
json.url precert_url(precert, format: :json)
