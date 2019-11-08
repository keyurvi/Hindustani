class CreateKeyurs < ActiveRecord::Migration[5.2]
  def change
    create_table :keyurs do |t|

      t.timestamps
    end
  end
end
