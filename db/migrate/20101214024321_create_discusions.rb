class CreateDiscusions < ActiveRecord::Migration
  def self.up
    create_table :discusions do |t|
      t.text :contenido

      t.timestamps
    end
  end

  def self.down
    drop_table :discusions
  end
end
