class CreateEventListOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :event_list_organizations do |t|
      t.references :organization_id, null: false, foreign_key: true
      t.references :event_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
#ESTA_CHECK