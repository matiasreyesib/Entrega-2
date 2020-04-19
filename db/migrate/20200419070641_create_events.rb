class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.bool :event_flag
      t.integer :event_creator
      t.integer :event_day
      t.boolean :private

      t.timestamps
    end
  end
end
