class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :origin #referencia a id_usuario
      t.integer :reciver #referencia a id_usuario
      t.text :message

      t.timestamps
    end
  end
end
