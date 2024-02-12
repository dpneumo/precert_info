class CreateCalls < ActiveRecord::Migration[7.1]
  def change
    create_table :calls do |t|
      t.references :precert, null: false, foreign_key: true
      t.datetime :call_time
      t.integer :duration
      t.text :note

      t.timestamps
    end
  end
end
