class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :user_name
      t.integer :aadhar_no
      t.date :birth_date
      t.string :fathers_name
      t.string :mothers_name
      t.integer :children

      t.timestamps
    end
  end
end
