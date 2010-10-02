class CreateProntuarios < ActiveRecord::Migration
  def self.up
    create_table :prontuarios do |t|
      t.string :motivo
      t.string :diagnostico
      t.string :observacao

      t.timestamps
    end
  end

  def self.down
    drop_table :prontuarios
  end
end
