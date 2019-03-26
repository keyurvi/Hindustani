class CreateCruds < ActiveRecord::Migration[5.2]
  def change
    create_table :cruds do |t|

      t.timestamps
    end
  end
end
