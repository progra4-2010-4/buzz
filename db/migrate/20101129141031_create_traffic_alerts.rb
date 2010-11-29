class CreateTrafficAlerts < ActiveRecord::Migration
  def self.up
    create_table :traffic_alerts do |t|
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :traffic_alerts
  end
end
