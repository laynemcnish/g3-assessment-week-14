class PatientController < ApplicationController

  def show
    @patient = Patient.find(params[:id])
    @medications = Medication.all
  end
end