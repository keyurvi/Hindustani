class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.integer :parent_id
      t.integer :user_id
      t.string :Parent
      t.string :father_name
      t.string :mother_name
      t.integer :father_aadhar_no
      t.integer :mother_aadhar_no
      t.date :father_birth_date
      t.date :mother_birth_date

      t.timestamps
    end
  end
end
