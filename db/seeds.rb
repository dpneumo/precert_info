# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

office1 = Office.find_or_create_by!(name: 'Fairmount', street1: '123 Fairmount', city: 'Fort Worth', zip: '76016')
office2 = Office.find_or_create_by!(name: 'Oak Park', street1: '2941 Oak Park Circle', city: 'Fort Worth', zip: '76109')

prov1 = Provider.find_or_create_by!(name: 'Mitch Kuppinger, MD', office_id: office2.id)
prov2 = Provider.find_or_create_by!(name: 'John Burk, MD', office_id: office1.id)

dx1 = Diagnosis.find_or_create_by!(name: 'OSA', icd10: 'J12.345')
dx2 = Diagnosis.find_or_create_by!(name: 'COPD', icd10: 'K87.44')

serv1 = Service.find_or_create_by!(name: 'PSG', servtype: 'Sleep')
serv2 = Service.find_or_create_by!(name: 'HST', servtype: 'Sleep')
serv3 = Service.find_or_create_by!(name: '6MWT', servtype: 'Pulmonary')

ins1 = Insurer.find_or_create_by!(name: 'BCBS of Texas')
ins2 = Insurer.find_or_create_by!(name: 'Aetna')
ins3 = Insurer.find_or_create_by!(name: 'Humana')

precert1 = Precert.find_or_create_by!(patientMRN: '123', service_id: serv1.id, diagnosis_id: dx1.id, provider_id: prov2.id, insurer_id: ins1.id, submitted: Date.new(2024,01,02) )
precert2 = Precert.find_or_create_by!(patientMRN: '123', service_id: serv1.id, diagnosis_id: dx2.id, provider_id: prov2.id, insurer_id: ins3.id, submitted: Date.new(2023,12,01) )
precert3 = Precert.find_or_create_by!(patientMRN: '123', service_id: serv1.id, diagnosis_id: dx1.id, provider_id: prov1.id, insurer_id: ins2.id, submitted: Date.new(2023,10,15) )
