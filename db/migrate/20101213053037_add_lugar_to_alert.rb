class AddLugarToAlert < ActiveRecord::Migration
  def self.up
    add_column :alerts, :lugar, :string
  end

  def self.down
    remove_column :alerts, :lugar
  end
end
