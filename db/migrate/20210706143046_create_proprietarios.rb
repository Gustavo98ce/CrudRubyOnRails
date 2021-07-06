class CreateProprietarios < ActiveRecord::Migration[6.0]
  def change
    create_table :proprietarios do |t|
      t.string :cpf_cnpj
      t.string :nome
      t.string :endereco

      t.timestamps
    end
  end
end
