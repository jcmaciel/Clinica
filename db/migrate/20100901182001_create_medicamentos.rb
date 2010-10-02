class CreateMedicamentos < ActiveRecord::Migration
  def self.up
    create_table :medicamentos do |t|
      t.string :nome
      t.string :dosagem

      t.timestamps
    end
  end

  def self.down
    drop_table :medicamentos
  end
end
