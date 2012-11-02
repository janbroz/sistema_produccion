class AddIdentificationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cedula, :integer

    add_column :users, :nombre, :string

    add_column :users, :tipo, :integer

  end
end
