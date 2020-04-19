class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.bool :event_flag
      t.int :event_creator
      t.int :event_day
      t.bool :private

      t.timestamps
    end
  end
end
