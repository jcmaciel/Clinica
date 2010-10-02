class Prontuario < ActiveRecord::Base
  belongs_to :consulta
  has_many :medicamentos
  has_many :exames
  
end
