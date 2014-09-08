class AlterPrescriptionsTable < ActiveRecord::Migration
  def change
    change_column :prescriptions, :medication_id,  'integer USING CAST(medication_id AS integer)'
  end
end
