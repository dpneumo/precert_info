class CreateProviders < ActiveRecord::Migration[7.1]
  def change
    create_table :providers do |t|
      t.string :last_name
      t.string :first_name
      t.string :credentials
      t.references :office, null: true

      t.timestamps
    end
    add_index :providers, [:last_name, :first_name], unique: true
  end
end
