class Trainer < ApplicationRecord
	has_many :trainees, dependent: :nullify

  validates :name, :last_name, presence: true

end
