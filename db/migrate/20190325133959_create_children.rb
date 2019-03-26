class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.integer :children_id
      t.integer :user_id
      t.string :child_name
      t.integer :child_aadhar_no
      t.date :child_birth_date
      t.string :child_fathers_name
      t.string :child_mothers_name

      t.timestamps
    end
  end
end
