class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.boolean :event_flag
      t.references :event_creator, null: false, foreign_key: true
      t.references :event_date, null: false, foreign_key: true
      t.boolean :private
      t.references :resource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
#ESTA_CHECK