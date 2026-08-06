class CreatePracticeSessions < ActiveRecord::Migration[7.2]
  def change
    create_table :practice_sessions do |t|
      t.string :name
      t.datetime :started_at
      t.integer :duration_seconds

      t.timestamps
    end
  end
end
