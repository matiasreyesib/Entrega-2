class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.boolean :event_flag
      t.integer :event_creator #referencia a id_usuario
      t.integer :event_day #referencia a id_date_option
      t.boolean :private

      t.timestamps
    end
  end
end
