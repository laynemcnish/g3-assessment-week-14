class CreatePrescriptionsTable < ActiveRecord::Migration
  def change
    create_table :prescriptions_tables do |t|
      t.integer :patient_id, null:false
      t.integer :medication_id, null:false
      t.string :dosage, null:false
      t.string :schedule, null:false
      t.date :starting_date, null:false
      t.date :ending_date, null:false
    end
  end
end
