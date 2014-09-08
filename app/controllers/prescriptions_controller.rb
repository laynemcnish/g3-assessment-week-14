class PrescriptionsController < ApplicationController

  def new
    @prescription = Prescription.new
    @medications = Medication.all
    @patient = Patient.find(params[:format])
  end

  def create
    @prescription = Prescription.new(allowed_parameters)
    @patient_id = params[:id]
    @medications = Medication.all
    if @prescription.valid?
      @prescription.save
      flash[:notice] = "Prescription was created successfully!"
      redirect_to patient_path(:id => params[:prescription][:patient_id])
    else
      render :new
    end
  end


  private
  def allowed_parameters
    params.require(:prescription).permit(:patient_id, :medication_id, :dosage, :schedule, :starting_date, :ending_date)
  end
end
