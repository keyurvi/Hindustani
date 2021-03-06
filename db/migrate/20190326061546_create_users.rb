class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_aadhar_number
      t.date :user_birthdate
      t.string :father_name
      t.string :father_aadhar_number
      t.date :father_birthdate
      t.string :mother_name
      t.string :mother_aadhar_number
      t.date :mother_birthdate
      t.attachment :avatar
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.integer :failed_attempts
      t.string :unlock_token
      t.datetime :locked_at
      t.timestamps
    end
  add_index :users, :confirmation_token, unique: true
  add_index :users, :email,                unique: true
  add_index :users, :reset_password_token, unique: true
  end
end
