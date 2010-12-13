class AddRelacionesToComment < ActiveRecord::Migration
  def self.up
    add_column :comments, :alert_id, :integer
    add_column :comments, :alert, :string
  end

  def self.down
    remove_column :comments, :alert
    remove_column :comments, :alert_id
  end
end
