class CreateExames < ActiveRecord::Migration
  def self.up
    create_table :exames do |t|
      t.string :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :exames
  end
end
