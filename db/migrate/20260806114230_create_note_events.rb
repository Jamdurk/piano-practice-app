class CreateNoteEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :note_events do |t|
      t.references :practice_session, null: false, foreign_key: true
      t.integer :note_number
      t.integer :velocity
      t.integer :timestamp_ms
      t.integer :duration_ms

      t.timestamps
    end
  end
end
