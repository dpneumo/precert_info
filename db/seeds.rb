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
office3 = Office.find_or_create_by!(name: 'Arlington', street1: '911C Medical Centre Drive', city: 'Arlington', zip: '76012')

prov1  = Provider.find_or_create_by!(first_name: 'Mitch',           last_name: 'Kuppinger',     credentials: 'MD',             office_id: office2.id)
prov2  = Provider.find_or_create_by!(first_name: 'John',            last_name: 'Burk',          credentials: 'MD',             office_id: office1.id)
prov3  = Provider.find_or_create_by!(first_name: 'John',            last_name: 'Hollingsworth', credentials: 'MD',             office_id: office1.id)
prov4  = Provider.find_or_create_by!(first_name: 'Ariffin',         last_name: 'Alam',          credentials: 'MD',             office_id: office1.id)
prov5  = Provider.find_or_create_by!(first_name: 'Jonathan',        last_name: 'Besas',         credentials: 'DO',             office_id: office1.id)
prov6  = Provider.find_or_create_by!(first_name: 'Robert L',        last_name: 'Cash Jr',       credentials: 'MD',             office_id: office3.id)
prov7  = Provider.find_or_create_by!(first_name: 'Kevin G ',        last_name: 'Connelly',      credentials: 'MD',             office_id: office1.id)
prov8  = Provider.find_or_create_by!(first_name: 'Huy X',           last_name: 'Duong',         credentials: 'DO',             office_id: office1.id)
prov9  = Provider.find_or_create_by!(first_name: 'Sai Karan Vamsi', last_name: 'Guda',          credentials: 'DO',             office_id: office1.id)
prov10 = Provider.find_or_create_by!(first_name: 'Abigale D ',      last_name: 'Henry',         credentials: 'MD',             office_id: office1.id)
prov11 = Provider.find_or_create_by!(first_name: 'Stuart D ',       last_name: 'McDonald',      credentials: 'MD',             office_id: office1.id)
prov12 = Provider.find_or_create_by!(first_name: 'Andrew L',        last_name: 'Miller',        credentials: 'MD',             office_id: office1.id)
prov13 = Provider.find_or_create_by!(first_name: 'Kerim F',         last_name: 'Razack',        credentials: 'MD',             office_id: office1.id)
prov14 = Provider.find_or_create_by!(first_name: 'Muhammad Hasham', last_name: 'Sarwar',        credentials: 'MD',             office_id: office1.id)
prov15 = Provider.find_or_create_by!(first_name: 'James T',         last_name: 'Siminski',      credentials: 'MD',             office_id: office3.id)
prov16 = Provider.find_or_create_by!(first_name: 'Amy',             last_name: 'Tounget',       credentials: 'AGACNP-BC',      office_id: office1.id)
prov17 = Provider.find_or_create_by!(first_name: 'Brandi R',        last_name: 'Trujillo',      credentials: 'AGACNP-BC',      office_id: office1.id)
prov18 = Provider.find_or_create_by!(first_name: 'Amanda',          last_name: 'Viehmann',      credentials: 'FNP, AGACNP-BC', office_id: office1.id)
prov19 = Provider.find_or_create_by!(first_name: 'Kelli R',         last_name: 'Vogler',        credentials: 'PA-C',           office_id: office1.id)
prov20 = Provider.find_or_create_by!(first_name: 'Kathleen',        last_name: 'Wilhite',       credentials: 'PA-C',           office_id: office1.id)
prov21 = Provider.find_or_create_by!(first_name: 'Amy M.',          last_name: 'Bird',          credentials: 'ACNP-BC',        office_id: office1.id)
prov22 = Provider.find_or_create_by!(first_name: 'Katherine',       last_name: 'Blalock',       credentials: 'AGACNP-BC',      office_id: office1.id)
prov23 = Provider.find_or_create_by!(first_name: 'Victoria',        last_name: 'Brothers',      credentials: 'PA-C',           office_id: office3.id)
prov24 = Provider.find_or_create_by!(first_name: 'Kenneth',         last_name: 'Collins',       credentials: 'AGACNP-BC',      office_id: office1.id)
prov25 = Provider.find_or_create_by!(first_name: 'John',            last_name: 'Deetjen',       credentials: 'PA-C',           office_id: office1.id)
prov26 = Provider.find_or_create_by!(first_name: 'Kimberly',        last_name: 'Grady',         credentials: 'ACNPC-AG',       office_id: office1.id)
prov27 = Provider.find_or_create_by!(first_name: 'Jonathan L',      last_name: 'Ives',          credentials: 'PA-C',           office_id: office1.id)
prov28 = Provider.find_or_create_by!(first_name: 'Dustin',          last_name: 'Kunz',          credentials: 'PA',             office_id: office1.id)
prov29 = Provider.find_or_create_by!(first_name: 'Pedro A',         last_name: 'Mendoza',       credentials: 'DNP, AGACNP-BC', office_id: office1.id)
prov30 = Provider.find_or_create_by!(first_name: 'Marcella I',      last_name: 'Miller',        credentials: 'FNP',            office_id: office3.id)
prov32 = Provider.find_or_create_by!(first_name: 'K Corinne',       last_name: 'Moreland',      credentials: 'ANP-BC',         office_id: office1.id)
prov33 = Provider.find_or_create_by!(first_name: 'Angela D',        last_name: 'Naser-Duong',   credentials: 'ACNP-BC',        office_id: office1.id)
prov34 = Provider.find_or_create_by!(first_name: 'Cynthia M',       last_name: 'Roger',         credentials: 'ACNP-BC',        office_id: office1.id)
prov35 = Provider.find_or_create_by!(first_name: 'Erin',            last_name: 'Rutledge',      credentials: 'PA-C',           office_id: office1.id)
prov36 = Provider.find_or_create_by!(first_name: 'Sarah',           last_name: 'Shaffer',       credentials: 'PA-C',           office_id: office1.id)

dx1  = Diagnosis.find_or_create_by!(icd10: 'G47.00', name: 'Insomnia, unspecified', dxtype: 'Sleep')
dx2  = Diagnosis.find_or_create_by!(icd10: 'G47.01', name: 'Insomnia, due to medical condition', dxtype: 'Sleep')
dx3  = Diagnosis.find_or_create_by!(icd10: 'G47.09', name: 'Insomnia, other', dxtype: 'Sleep')

dx4  = Diagnosis.find_or_create_by!(icd10: 'G47.10', name: 'Hypersomnia, unspecified', dxtype: 'Sleep')
dx5  = Diagnosis.find_or_create_by!(icd10: 'G47.11', name: 'Hypersomnia, Idiopathic w/ long sleep time', dxtype: 'Sleep')
dx6  = Diagnosis.find_or_create_by!(icd10: 'G47.12', name: 'Hypersomnia, Idiopathic w/o long sleep time', dxtype: 'Sleep')
dx7  = Diagnosis.find_or_create_by!(icd10: 'G47.13', name: 'Hypersomnia, Recurrent', dxtype: 'Sleep')
dx8  = Diagnosis.find_or_create_by!(icd10: 'G47.14', name: 'Hypersomnia, due to medical condition', dxtype: 'Sleep')
dx9  = Diagnosis.find_or_create_by!(icd10: 'G47.19', name: 'Hypersomnia, other', dxtype: 'Sleep')

dx10 = Diagnosis.find_or_create_by!(icd10: 'G47.20', name: 'Circadian Rhythm Disorder, unspecified', dxtype: 'Sleep')
dx11 = Diagnosis.find_or_create_by!(icd10: 'G47.21', name: 'Circadian Rhythm Disorder, delayed sleep phase', dxtype: 'Sleep')
dx12 = Diagnosis.find_or_create_by!(icd10: 'G47.22', name: 'Circadian Rhythm Disorder, advanced sleep phase', dxtype: 'Sleep')
dx13 = Diagnosis.find_or_create_by!(icd10: 'G47.23', name: 'Circadian Rhythm Disorder, irreg sleep/wake', dxtype: 'Sleep')
dx14 = Diagnosis.find_or_create_by!(icd10: 'G47.24', name: 'Circadian Rhythm Disorder, free running', dxtype: 'Sleep')
dx15 = Diagnosis.find_or_create_by!(icd10: 'G47.25', name: 'Circadian Rhythm Disorder, jet lag', dxtype: 'Sleep')
dx16 = Diagnosis.find_or_create_by!(icd10: 'G47.26', name: 'Circadian Rhythm Disorder, shift work', dxtype: 'Sleep')
dx17 = Diagnosis.find_or_create_by!(icd10: 'G47.27', name: 'Circadian Rhythm Disorder, due to medical condition', dxtype: 'Sleep')
dx18 = Diagnosis.find_or_create_by!(icd10: 'G47.29', name: 'Circadian Rhythm Disorder, other', dxtype: 'Sleep')

dx19 = Diagnosis.find_or_create_by!(icd10: 'G47.30', name: 'Sleep Apnea, unspecified', dxtype: 'Sleep')
dx20 = Diagnosis.find_or_create_by!(icd10: 'G47.31', name: 'Central Sleep Apnea, primary', dxtype: 'Sleep')
dx21 = Diagnosis.find_or_create_by!(icd10: 'G47.32', name: 'Periodic Breathing, High Altitude', dxtype: 'Sleep')
dx22 = Diagnosis.find_or_create_by!(icd10: 'G47.33', name: 'Obstructive Sleep Apnea', dxtype: 'Sleep')
dx23 = Diagnosis.find_or_create_by!(icd10: 'G47.34', name: 'Alveolar Hypoventilation - Non Obstructive , idiopathic, in sleep', dxtype: 'Sleep')
dx24 = Diagnosis.find_or_create_by!(icd10: 'G47.35', name: 'Alveolar Hypoventilation - Central, Congenital', dxtype: 'Sleep')
dx25 = Diagnosis.find_or_create_by!(icd10: 'G47.36', name: 'Alveolar Hypoventilation in sleep, due to medical condition', dxtype: 'Sleep')
dx26 = Diagnosis.find_or_create_by!(icd10: 'G47.37', name: 'Central Sleep Apnea, due to medical condition', dxtype: 'Sleep')
dx27 = Diagnosis.find_or_create_by!(icd10: 'G47.39', name: 'Sleep Apnea, other', dxtype: 'Sleep')

dx28 = Diagnosis.find_or_create_by!(icd10: 'G47.411', name: 'Narcolepsy w/ Cataplexy', dxtype: 'Sleep')
dx29 = Diagnosis.find_or_create_by!(icd10: 'G47.419', name: 'Narcolepsy w/o Cataplexy', dxtype: 'Sleep')
dx30 = Diagnosis.find_or_create_by!(icd10: 'G47.421', name: 'Narcolepsy w/ Cataplexy, due to medical condition', dxtype: 'Sleep')
dx31 = Diagnosis.find_or_create_by!(icd10: 'G47.429', name: 'Narcolepsy w/o Cataplexy, due to medical condition', dxtype: 'Sleep')

dx32 = Diagnosis.find_or_create_by!(icd10: 'G47.50', name: 'Parasomnia, unspecified', dxtype: 'Sleep')
dx33 = Diagnosis.find_or_create_by!(icd10: 'G47.51', name: 'Confusional Arousals', dxtype: 'Sleep')
dx34 = Diagnosis.find_or_create_by!(icd10: 'G47.52', name: 'REM Sleep Behavior Disorder', dxtype: 'Sleep')
dx35 = Diagnosis.find_or_create_by!(icd10: 'G47.53', name: 'Recurrent Isolated Sleep Paralysis', dxtype: 'Sleep')
dx36 = Diagnosis.find_or_create_by!(icd10: 'G47.54', name: 'Parasomnia, due to medical condition', dxtype: 'Sleep')
dx37 = Diagnosis.find_or_create_by!(icd10: 'G47.59', name: 'Parasomnia, other', dxtype: 'Sleep')

dx38 = Diagnosis.find_or_create_by!(icd10: 'G47.61', name: 'Periodic limb movement disorder', dxtype: 'Sleep')
dx39 = Diagnosis.find_or_create_by!(icd10: 'G47.62', name: 'Sleep related leg cramps', dxtype: 'Sleep')
dx40 = Diagnosis.find_or_create_by!(icd10: 'G47.63', name: 'Sleep related bruxism', dxtype: 'Sleep')
dx41 = Diagnosis.find_or_create_by!(icd10: 'G47.69', name: 'Sleep related movement disorder, other', dxtype: 'Sleep')

dx42 = Diagnosis.find_or_create_by!(icd10: 'G47.8', name: 'Other sleep disorders', dxtype: 'Sleep')
dx43 = Diagnosis.find_or_create_by!(icd10: 'G47.9', name: 'Sleep disorder, unspecified', dxtype: 'Sleep')

serv1  = Service.find_or_create_by!(name: 'Actigraphy', cptcode: '95803', servtype: 'Sleep')
serv2  = Service.find_or_create_by!(name: 'HST ?1, ', cptcode: '95800', servtype: 'Sleep')
serv3  = Service.find_or_create_by!(name: 'HST ?2, ', cptcode: '95801', servtype: 'Sleep')
serv4  = Service.find_or_create_by!(name: 'PSG, Diagnostic', cptcode: '95808', servtype: 'Sleep')
serv5  = Service.find_or_create_by!(name: 'PSG, Sz Montage', cptcode: '95808', servtype: 'Sleep')
serv6  = Service.find_or_create_by!(name: 'MWT', cptcode: '95805, M', servtype: 'Sleep')
serv7  = Service.find_or_create_by!(name: 'MSLT', cptcode: '95805', servtype: 'Sleep')
serv8  = Service.find_or_create_by!(name: 'Narcolepsy Screen (PSG -> MSLT)', cptcode: '95808, 95805', servtype: 'Sleep')
serv9  = Service.find_or_create_by!(name: 'Narcolepsy Screen (PAP titration -> MSLT)', cptcode: '95811, 95805', servtype: 'Sleep')
serv10 = Service.find_or_create_by!(name: 'Titration, CPAP-BiPAP', cptcode: '95811', servtype: 'Sleep')
serv11 = Service.find_or_create_by!(name: 'Titration, BiPAP-ASV', cptcode: '95811,V', servtype: 'Sleep')
serv12 = Service.find_or_create_by!(name: 'PSG, Split Noc', cptcode: '958??', servtype: 'Sleep')

ins1 = Insurer.find_or_create_by!(name: 'BCBS of Texas')
ins2 = Insurer.find_or_create_by!(name: 'Aetna')
ins3 = Insurer.find_or_create_by!(name: 'Humana')
ins4 = Insurer.find_or_create_by!(name: 'Cigna')
ins5 = Insurer.find_or_create_by!(name: 'Celtic')

precert1 = Precert.find_or_create_by!(patientMRN: '123', service_id: serv1.id, diagnosis_id: dx1.id, provider_id: prov2.id, insurer_id: ins1.id, status: 1, submission_date: Date.new(2024,01,02) )
precert2 = Precert.find_or_create_by!(patientMRN: '123', service_id: serv1.id, diagnosis_id: dx2.id, provider_id: prov2.id, insurer_id: ins3.id, status: 1, submission_date: Date.new(2023,12,01) )
precert3 = Precert.find_or_create_by!(patientMRN: '123', service_id: serv1.id, diagnosis_id: dx1.id, provider_id: prov1.id, insurer_id: ins2.id, status: 1, submission_date: Date.new(2023,10,15) )

if ! User.find_by(email: 'delete.me@dummy.com')
  User.new(email: 'delete.me@dummy.com', password: 'YouWillBeHacked', password_confirmation: 'YouWillBeHacked', role: 'admin').save
end
