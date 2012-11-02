class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :reference
      t.string :name
      t.integer :caliber

      t.timestamps
    end
  end
end
