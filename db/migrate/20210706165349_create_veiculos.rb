class CreateVeiculos < ActiveRecord::Migration[6.0]
  def change
    create_table :veiculos do |t|
      t.string :placa
      t.string :renavam

      t.timestamps
    end
  end
end
