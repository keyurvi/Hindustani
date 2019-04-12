class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.references :user, foreign_key: true
      t.string :children_name
      t.string :children_aadhar_number
      t.date :children_birthdate
      t.timestamps
    end
  end
end
