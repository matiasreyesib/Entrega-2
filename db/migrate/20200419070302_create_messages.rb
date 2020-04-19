class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :origin
      t.integer :reciver
      t.text :message

      t.timestamps
    end
  end
end
