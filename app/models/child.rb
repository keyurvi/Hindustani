class Child < ApplicationRecord
  self.table_name = "children"
  belongs_to :user
end
