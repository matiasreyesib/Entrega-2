class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user
      t.string :name
      t.string :last_name
      t.string :phone
      t.datetime :dob
      t.string :adress

      t.timestamps
    end
  end
end
