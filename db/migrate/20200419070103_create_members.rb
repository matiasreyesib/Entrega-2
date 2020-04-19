class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.integer :user_id #referencia a id_usuario
      t.integer :organization_id #referencia a id_organization
      t.string :rol

      t.timestamps
    end
  end
end
