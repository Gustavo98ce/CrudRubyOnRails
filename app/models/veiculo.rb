class Veiculo < ApplicationRecord
  validates_presence_of :placa, :message => " - Deve ser preenchido"
  validates_presence_of :renavam, :message => " - Deve ser preenchido"
  belongs_to :proprietario

end
