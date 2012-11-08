class CreateCortes < ActiveRecord::Migration
  def change
    create_table :cortes do |t|
      t.boolean :grafiladoV
      t.boolean :grafiladoH

      t.timestamps
    end
  end
end
