class CreateParticipations < ActiveRecord::Migration[6.0]
  def change
    create_table :participations do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :event_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
#ESTA_CHECK
