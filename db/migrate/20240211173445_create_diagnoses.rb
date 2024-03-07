class CreateDiagnoses < ActiveRecord::Migration[7.1]
  def change
    create_table :diagnoses do |t|
      t.string :name
      t.string :icd10
      t.string :dxtype

      t.timestamps
    end
    add_index :diagnoses, :name, unique: true
    add_index :diagnoses, :icd10, unique: true
  end
end
