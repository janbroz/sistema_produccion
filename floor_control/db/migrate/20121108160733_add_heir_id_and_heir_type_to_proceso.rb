class AddHeirIdAndHeirTypeToProceso < ActiveRecord::Migration
  def change
    add_column :procesos, :heir_id, :integer

    add_column :procesos, :heir_type, :string

  end
end
