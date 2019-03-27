class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :father_aadhar_number, :integer
    add_column :users, :father_bdate, :date
    add_column :users, :mother_aadhar_number, :integer
    add_column :users, :mother_bdate, :date
    add_column :users, :children_aadhar_number, :integer
    add_column :users, :children_bdate, :date
  end
end
