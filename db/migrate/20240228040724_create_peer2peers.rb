class CreatePeer2peers < ActiveRecord::Migration[7.1]
  def change
    create_table :peer2peers do |t|
      t.references :precert, null: false, foreign_key: true
      t.datetime :scheduled, null: false
      t.string :peer
      t.boolean :accept
      t.string :code
      t.text :note

      t.timestamps
    end
  end
end
