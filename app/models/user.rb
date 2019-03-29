class User < ApplicationRecord
	validates :name, presence: true, length: { minimum: 5 }
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  	has_many :childrens, :class_name => "Child"
	accepts_nested_attributes_for :childrens, allow_destroy: true

end
