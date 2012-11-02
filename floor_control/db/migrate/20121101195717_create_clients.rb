class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nit
      t.string :corporate_name
      t.string :telephone
      t.string :direction
      t.integer :user_cedula

      t.timestamps
    end
  end
end
