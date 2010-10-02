class CreateConsultas < ActiveRecord::Migration
  def self.up
    create_table :consultas do |t|
      t.datetime :data
      t.float :preco
      t.string :nome_plano
      t.string :tipo_plano
      t.string :tipo_consulta
      t.references :medico, :paciente
      
      t.timestamps
    end
  end

  def self.down
    drop_table :consultas
  end
end
