class CreateTrainees < ActiveRecord::Migration[5.0]
  def change
    create_table :trainees do |t|
      t.string :name
      t.string :last_name
      t.text :notes
      t.references :trainer, foreign_key: true

      t.timestamps
    end
  end
end
