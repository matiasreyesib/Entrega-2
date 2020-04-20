class CreateDateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :date_votes do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :casted_vote, null: false, foreign_key: true

      t.timestamps
    end
  end
end
#ESTA_CHECK