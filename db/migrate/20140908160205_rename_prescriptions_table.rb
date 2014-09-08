class RenamePrescriptionsTable < ActiveRecord::Migration
  def self.up
    rename_table :prescriptions_tables, :prescriptions
  end
end
