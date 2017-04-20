class CreateRoutines < ActiveRecord::Migration[5.0]
  def change
    create_table :routines do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.references :trainee, foreign_key: true

      t.timestamps
    end
  end
end
