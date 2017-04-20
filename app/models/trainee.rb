class Trainee < ApplicationRecord
  belongs_to :trainer

  has_many :routines, dependent: :destroy

  validates :name, :last_name, :notes, :end_suscription_date, presence: true
end