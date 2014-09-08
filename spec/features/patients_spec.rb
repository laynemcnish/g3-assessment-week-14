require 'rails_helper'
require 'capybara/rails'

feature "Patients" do

  scenario "User sees all patient" do
    user = create_user
    patient = create_patient
    login(user)

    expect(page).to have_content(patient.first_name, patient.last_name)
  end

  scenario "User can click on patient name on index page and see their patient info" do
    user = create_user
    patient = create_patient
    login(user)
    click_link("Some Patient")
    expect(page).to have_content(patient.first_name, patient.last_name, "prescriptions")

  end

end