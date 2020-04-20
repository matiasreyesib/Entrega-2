class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :username
      t.boolean :admin

      t.timestamps
    end
  end
end
#ESTA_CHECK