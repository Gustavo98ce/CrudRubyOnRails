class AddProprietarioToVeiculo < ActiveRecord::Migration[6.0]
  def change
    add_reference :veiculos, :proprietario, null: false, foreign_key: true
  end
end
