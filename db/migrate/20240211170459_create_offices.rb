class CreateOffices < ActiveRecord::Migration[7.1]
  def change
    create_table :offices do |t|
      t.string :name, null: false
      t.string :street1, null: false
      t.string :street2
      t.string :city, null: false
      t.string :state, default: 'TX'
      t.string :zip, null: false
      t.string :ph_main

      t.timestamps
    end
  end
end
