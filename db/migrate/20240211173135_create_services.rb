class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :servtype

      t.timestamps
    end
    add_index :services, :name, unique: true
    add_index :services, :servtype
  end
end
