require 'brI18n'
require 'brazilian-rails'
class Paciente < ActiveRecord::Base
  has_many :medicos, :through => :consultas
  has_many :consultas
  usar_como_cpf :cpf
  validates_presence_of :nome
end

