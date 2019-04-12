class Child < ApplicationRecord
  self.table_name = "children"
  belongs_to :user
  has_many :documents, as: :people, :dependent => :destroy
  accepts_nested_attributes_for :documents, allow_destroy: true

end
