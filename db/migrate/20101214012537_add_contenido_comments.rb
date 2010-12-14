class AddContenidoComments < ActiveRecord::Migration
  def self.up
   add_column :comments, :contenido, :text
  end

  def self.down
  remove_column :comments, :contenido
  end
end
