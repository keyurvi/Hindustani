class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :aadhar_number
      t.date :bdate
      t.string :father_name
      t.string :mother_name

      t.timestamps
    end
  end
end
