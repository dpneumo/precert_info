class CreateProviders < ActiveRecord::Migration[7.1]
  def change
    create_table :providers do |t|
      t.string :name
      t.references :office, null: true

      t.timestamps
    end
    add_index :providers, :name, unique: true
  end
end
