class CreateCheckups < ActiveRecord::Migration[5.0]
  def change
    create_table :checkups do |t|
      t.datetime :appointment
      t.integer :visits
      t.integer :doctor_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
