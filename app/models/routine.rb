class Routine < ApplicationRecord
  belongs_to :trainee

  validates :name, :description, :start_date, :end_date, presence: true

end
