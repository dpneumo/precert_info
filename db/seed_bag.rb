module SeedBag
  def self.prod_seeds
    Office.find_or_create_by!(name: 'Fairmount', street1: '123 Fairmount',          city: 'Fort Worth', zip: '76016')
    Office.find_or_create_by!(name: 'Oak Park',  street1: '2941 Oak Park Circle',   city: 'Fort Worth', zip: '76109')
    Office.find_or_create_by!(name: 'Arlington', street1: '911C Medical Centre Dr', city: 'Arlington',  zip: '76012')

    Provider.find_or_create_by!(first_name: 'Mitch',           last_name: 'Kuppinger',     credentials: 'MD',             office_id: office2.id)
    Provider.find_or_create_by!(first_name: 'John',            last_name: 'Burk',          credentials: 'MD',             office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'John',            last_name: 'Hollingsworth', credentials: 'MD',             office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Ariffin',         last_name: 'Alam',          credentials: 'MD',             office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Jonathan',        last_name: 'Besas',         credentials: 'DO',             office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Robert L',        last_name: 'Cash Jr',       credentials: 'MD',             office_id: office3.id)
    Provider.find_or_create_by!(first_name: 'Kevin G ',        last_name: 'Connelly',      credentials: 'MD',             office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Huy X',           last_name: 'Duong',         credentials: 'DO',             office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Sai Karan Vamsi', last_name: 'Guda',          credentials: 'DO',             office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Abigale D ',      last_name: 'Henry',         credentials: 'MD',             office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Stuart D ',       last_name: 'McDonald',      credentials: 'MD',             office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Andrew L',        last_name: 'Miller',        credentials: 'MD',             office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Kerim F',         last_name: 'Razack',        credentials: 'MD',             office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Muhammad Hasham', last_name: 'Sarwar',        credentials: 'MD',             office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'James T',         last_name: 'Siminski',      credentials: 'MD',             office_id: office3.id)
    Provider.find_or_create_by!(first_name: 'Amy',             last_name: 'Tounget',       credentials: 'AGACNP-BC',      office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Brandi R',        last_name: 'Trujillo',      credentials: 'AGACNP-BC',      office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Amanda',          last_name: 'Viehmann',      credentials: 'FNP, AGACNP-BC', office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Kelli R',         last_name: 'Vogler',        credentials: 'PA-C',           office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Kathleen',        last_name: 'Wilhite',       credentials: 'PA-C',           office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Amy M.',          last_name: 'Bird',          credentials: 'ACNP-BC',        office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Katherine',       last_name: 'Blalock',       credentials: 'AGACNP-BC',      office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Victoria',        last_name: 'Brothers',      credentials: 'PA-C',           office_id: office3.id)
    Provider.find_or_create_by!(first_name: 'Kenneth',         last_name: 'Collins',       credentials: 'AGACNP-BC',      office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'John',            last_name: 'Deetjen',       credentials: 'PA-C',           office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Kimberly',        last_name: 'Grady',         credentials: 'ACNPC-AG',       office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Jonathan L',      last_name: 'Ives',          credentials: 'PA-C',           office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Dustin',          last_name: 'Kunz',          credentials: 'PA',             office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Pedro A',         last_name: 'Mendoza',       credentials: 'DNP, AGACNP-BC', office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Marcella I',      last_name: 'Miller',        credentials: 'FNP',            office_id: office3.id)
    Provider.find_or_create_by!(first_name: 'K Corinne',       last_name: 'Moreland',      credentials: 'ANP-BC',         office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Angela D',        last_name: 'Naser-Duong',   credentials: 'ACNP-BC',        office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Cynthia M',       last_name: 'Roger',         credentials: 'ACNP-BC',        office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Erin',            last_name: 'Rutledge',      credentials: 'PA-C',           office_id: office1.id)
    Provider.find_or_create_by!(first_name: 'Sarah',           last_name: 'Shaffer',       credentials: 'PA-C',           office_id: office1.id)

    Diagnosis.find_or_create_by!(icd10: 'G47.00', name: 'Insomnia, unspecified', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.01', name: 'Insomnia, due to medical condition', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.09', name: 'Insomnia, other', dxtype: 'Sleep')

    Diagnosis.find_or_create_by!(icd10: 'G47.10', name: 'Hypersomnia, unspecified', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.11', name: 'Hypersomnia, Idiopathic w/ long sleep time', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.12', name: 'Hypersomnia, Idiopathic w/o long sleep time', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.14', name: 'Hypersomnia, due to medical condition', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.19', name: 'Hypersomnia, other', dxtype: 'Sleep')

    Diagnosis.find_or_create_by!(icd10: 'G47.20', name: 'Circadian Rhythm Disorder, unspecified', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.21', name: 'Circadian Rhythm Disorder, delayed sleep phase', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.22', name: 'Circadian Rhythm Disorder, advanced sleep phase', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.23', name: 'Circadian Rhythm Disorder, irreg sleep/wake', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.24', name: 'Circadian Rhythm Disorder, free running', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.25', name: 'Circadian Rhythm Disorder, jet lag', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.26', name: 'Circadian Rhythm Disorder, shift work', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.27', name: 'Circadian Rhythm Disorder, due to medical condition', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.29', name: 'Circadian Rhythm Disorder, other', dxtype: 'Sleep')

    Diagnosis.find_or_create_by!(icd10: 'G47.30', name: 'Sleep Apnea, unspecified', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.31', name: 'Central Sleep Apnea, primary', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.32', name: 'Periodic Breathing, High Altitude', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.33', name: 'Obstructive Sleep Apnea', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.34', name: 'Alveolar Hypoventilation - Non Obstructive , idiopathic, in sleep', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.35', name: 'Alveolar Hypoventilation - Central, Congenital', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.36', name: 'Alveolar Hypoventilation in sleep, due to medical condition', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.37', name: 'Central Sleep Apnea, due to medical condition', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.39', name: 'Sleep Apnea, other', dxtype: 'Sleep')

    Diagnosis.find_or_create_by!(icd10: 'G47.411', name: 'Narcolepsy w/ Cataplexy', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.419', name: 'Narcolepsy w/o Cataplexy', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.421', name: 'Narcolepsy w/ Cataplexy, due to medical condition', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.429', name: 'Narcolepsy w/o Cataplexy, due to medical condition', dxtype: 'Sleep')

    Diagnosis.find_or_create_by!(icd10: 'G47.50', name: 'Parasomnia, unspecified', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.51', name: 'Confusional Arousals', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.52', name: 'REM Sleep Behavior Disorder', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.53', name: 'Recurrent Isolated Sleep Paralysis', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.54', name: 'Parasomnia, due to medical condition', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.59', name: 'Parasomnia, other', dxtype: 'Sleep')

    Diagnosis.find_or_create_by!(icd10: 'G47.61', name: 'Periodic limb movement disorder', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.62', name: 'Sleep related leg cramps', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.63', name: 'Sleep related bruxism', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.69', name: 'Sleep related movement disorder, other', dxtype: 'Sleep')

    Diagnosis.find_or_create_by!(icd10: 'G47.8',  name: 'Other sleep disorders', dxtype: 'Sleep')
    Diagnosis.find_or_create_by!(icd10: 'G47.9',  name: 'Sleep disorder, unspecified', dxtype: 'Sleep')

    Service.find_or_create_by!(cptcode: '95803',        name: 'Actigraphy',                                servtype: 'Sleep')
    Service.find_or_create_by!(cptcode: '95800',        name: 'HST ?1, ',                                  servtype: 'Sleep')
    Service.find_or_create_by!(cptcode: '95801',        name: 'HST ?2, ',                                  servtype: 'Sleep')
    Service.find_or_create_by!(cptcode: '95808',        name: 'PSG, Diagnostic',                           servtype: 'Sleep')
    Service.find_or_create_by!(cptcode: '95808',        name: 'PSG, Sz Montage',                           servtype: 'Sleep')
    Service.find_or_create_by!(cptcode: '95805, M',     name: 'MWT',                                       servtype: 'Sleep')
    Service.find_or_create_by!(cptcode: '95805',        name: 'MSLT',                                      servtype: 'Sleep')
    Service.find_or_create_by!(cptcode: '95808, 95805', name: 'Narcolepsy Screen (PSG -> MSLT)',           servtype: 'Sleep')
    Service.find_or_create_by!(cptcode: '95811, 95805', name: 'Narcolepsy Screen (PAP titration -> MSLT)', servtype: 'Sleep')
    Service.find_or_create_by!(cptcode: '95811',        name: 'Titration, CPAP-BiPAP',                     servtype: 'Sleep')
    Service.find_or_create_by!(cptcode: '95811,V',      name: 'Titration, BiPAP-ASV',                      servtype: 'Sleep')
    Service.find_or_create_by!(cptcode: '95808, 95811', name: 'PSG, Split Noc',                            servtype: 'Sleep')

    Insurer.find_or_create_by!(name: 'BCBS of Texas')
    Insurer.find_or_create_by!(name: 'Aetna')
    Insurer.find_or_create_by!(name: 'Humana')
    Insurer.find_or_create_by!(name: 'Cigna')
    Insurer.find_or_create_by!(name: 'Celtic')
  end

  def self.dev_seeds
    off1 =  Office.find_or_create_by!(name: 'Fairmount', street1: '123 Fairmount',          city: 'Fort Worth', zip: '76016')
    off2 =  Office.find_or_create_by!(name: 'Oak Park',  street1: '2941 Oak Park Circle',   city: 'Fort Worth', zip: '76109')
    off3 =  Office.find_or_create_by!(name: 'Arlington', street1: '911C Medical Centre Dr', city: 'Arlington',  zip: '76012')

    prov1 = Provider.find_or_create_by!(first_name: 'Mitch', last_name: 'Kuppinger',     credentials: 'MD', office_id: off2.id)
    prov2 = Provider.find_or_create_by!(first_name: 'John',  last_name: 'Burk',          credentials: 'MD', office_id: off1.id)
    prov3 = Provider.find_or_create_by!(first_name: 'John',  last_name: 'Hollingsworth', credentials: 'MD', office_id: off3.id)

    dx1 =   Diagnosis.find_or_create_by!(icd10: 'G47.30', name: 'Sleep Apnea, unspecified',          dxtype: 'Sleep')
    dx2 =   Diagnosis.find_or_create_by!(icd10: 'G47.31', name: 'Central Sleep Apnea, primary',      dxtype: 'Sleep')
    dx3 =   Diagnosis.find_or_create_by!(icd10: 'G47.32', name: 'Periodic Breathing, High Altitude', dxtype: 'Sleep')

    serv1 = Service.find_or_create_by!(cptcode: '95808',    name: 'PSG, Diagnostic', servtype: 'Sleep')
    serv2 = Service.find_or_create_by!(cptcode: '95808',    name: 'PSG, Sz Montage', servtype: 'Sleep')
    serv3 = Service.find_or_create_by!(cptcode: '95805, M', name: 'MWT',             servtype: 'Sleep')
    serv4 = Service.find_or_create_by!(cptcode: '95805',    name: 'MSLT',            servtype: 'Sleep')

    ins1 =  Insurer.find_or_create_by!(name: 'BCBS of Texas')
    ins2 =  Insurer.find_or_create_by!(name: 'Aetna')
    ins3 =  Insurer.find_or_create_by!(name: 'Humana')

    Precert.find_or_create_by!(patientMRN: '123', service_id: serv3.id, diagnosis_id: dx1.id, provider_id: prov2.id, 
                               insurer_id: ins1.id, status: 1, submission_date: Date.new(2024,01,02) )

    Precert.find_or_create_by!(patientMRN: '456', service_id: serv2.id, diagnosis_id: dx2.id, provider_id: prov2.id, 
                               insurer_id: ins3.id, status: 1, submission_date: Date.new(2023,12,01) )

    Precert.find_or_create_by!(patientMRN: '789', service_id: serv1.id, diagnosis_id: dx3.id, provider_id: prov1.id, 
                               insurer_id: ins2.id, status: 1, submission_date: Date.new(2023,10,15) )
  end
end
