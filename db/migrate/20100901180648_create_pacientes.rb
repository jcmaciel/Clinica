class CreatePacientes < ActiveRecord::Migration
  def self.up
    create_table :pacientes do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.string :celular
      t.string :rg
      t.string :cpf

      t.timestamps
    end
  end

  def self.down
    drop_table :pacientes
  end
end
