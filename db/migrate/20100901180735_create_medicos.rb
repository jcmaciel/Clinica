class CreateMedicos < ActiveRecord::Migration
  def self.up
    create_table :medicos do |t|
      t.string :nome
      t.string :especialidade
      t.string :picture_file_name
      t.string :picture_content_type
      t.integer :picture_file_size
      t.datetime :picture_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :medicos
  end
end
