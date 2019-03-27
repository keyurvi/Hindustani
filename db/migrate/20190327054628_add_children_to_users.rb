class AddChildrenToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :children, :string
  end
end
