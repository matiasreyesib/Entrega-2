class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.int :user
      t.int :organization
      t.string :rol

      t.timestamps
    end
  end
end
