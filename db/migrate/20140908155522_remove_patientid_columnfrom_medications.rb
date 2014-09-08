class RemovePatientidColumnfromMedications < ActiveRecord::Migration
  def change
    remove_column :medications, :patient_id
  end
end
