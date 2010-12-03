class CreateAlerts < ActiveRecord::Migration
  def self.up
    create_table :alerts do |t|
      t.string :content

      t.timestamps
    end
  end

  def self.down
    drop_table :alerts
  end
end
