class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :organization_id, null: false, foreign_key: true
      t.string :rol

      t.timestamps
    end
  end
end
#ESTA_CHECK