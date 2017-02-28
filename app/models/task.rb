class Task < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode

  def completed?
    !completed.blank?
  end
end
