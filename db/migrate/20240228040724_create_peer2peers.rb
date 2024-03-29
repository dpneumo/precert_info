class CreatePeer2peers < ActiveRecord::Migration[7.1]
  def change
    create_table :peer2peers do |t|
      t.references :precert, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true
      t.datetime :p2p_date
      t.integer :duration
      t.string :peer
      t.text :note

      t.timestamps
    end
  end
end
