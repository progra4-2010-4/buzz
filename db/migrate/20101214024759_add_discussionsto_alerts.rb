class AddDiscussionstoAlerts < ActiveRecord::Migration
  def self.up
  add_column :discusions, :alert_id, :integer   
  end

  def self.down
 remove_column :discusions, :alert_id

  end
end
