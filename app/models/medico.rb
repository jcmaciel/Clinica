require 'brI18n'
require 'brazilian-rails'
class Medico < ActiveRecord::Base
  has_many :pacientes,  :through => :consultas
  has_many :consultas
  has_attached_file :picture, :styles => {:small => "150x150", :large => "550x550"}
end
