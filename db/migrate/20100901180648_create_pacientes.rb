class CreatePacientes < ActiveRecord::Migration
  def self.up
    create_table :pacientes do |t|
      t.string :nome
      t.string :rua
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :estado
      t.string :telefone
      t.string :celular
      t.string :rg
      t.string :cpf
      t.string :email
      t.date :data_de_nascimento
      t.string :plano_de_saude
      t.string :tipo_de_plano      

      t.timestamps
    end
  end

  def self.down
    drop_table :pacientes
  end
end
