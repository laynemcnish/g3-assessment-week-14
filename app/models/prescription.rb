class Prescription < ActiveRecord::Base
  belongs_to :patient
  belongs_to :medication
  validates :patient_id, presence: true
  validates :medication_id, presence: true
  validates :dosage, presence: true
  validates :schedule, presence: true


  validate :starting_date_must_be_before_ending_date

  def starting_date_must_be_before_ending_date
    errors.add(:starting_date, "must be before ending date") if
      :starting_date > :ending_date
  end
end
