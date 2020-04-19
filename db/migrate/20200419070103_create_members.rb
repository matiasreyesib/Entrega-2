class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.integer :user
      t.integer :organization
      t.string :rol

      t.timestamps
    end
  end
end
