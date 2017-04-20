class AddSuscriptionDateToTrainee < ActiveRecord::Migration[5.0]
  def change
  	add_column :trainees, :start_suscription_date, :date
  	add_column :trainees, :end_suscription_date, :date
  end
end
