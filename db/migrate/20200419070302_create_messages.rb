class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :origin, null: false, foreign_key: true
      t.references :reciver, null: false, foreign_key: true
      t.text :message

      t.timestamps
    end
  end
end
#ESTA_CHECK