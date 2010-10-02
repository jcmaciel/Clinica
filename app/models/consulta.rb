require 'brI18n'
require 'brazilian-rails'
class Consulta < ActiveRecord::Base
  belongs_to :medico
  belongs_to :paciente
  has_one :prontuario
  validates_uniqueness_of :data
end
