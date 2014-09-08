class PatientsController < ApplicationController

  def show
    @patient = Patient.find(params[:id])
    @prescriptions = Prescription.where("patient_id = #{params[:id]}")
    @medications = Medication.all
  end
end