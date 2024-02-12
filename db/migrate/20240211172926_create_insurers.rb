class CreateInsurers < ActiveRecord::Migration[7.1]
  def change
    create_table :insurers do |t|
      t.string :name

      t.timestamps
    end
    add_index :insurers, :name, unique: true
  end
end
