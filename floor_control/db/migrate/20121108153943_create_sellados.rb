class CreateSellados < ActiveRecord::Migration
  def change
    create_table :sellados do |t|
      t.boolean :sellado_curvo
      t.string :troquel

      t.timestamps
    end
  end
end
