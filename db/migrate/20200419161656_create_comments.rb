class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id #referencia a id_usuario
      t.text :comment
      t.integer :event_id #referencia a id_evento

      t.timestamps
    end
  end
end
