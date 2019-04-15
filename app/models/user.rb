class User < ApplicationRecord
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  	has_many :childrens, :class_name => "Child" , :dependent => :destroy
	accepts_nested_attributes_for :childrens, allow_destroy: true
  	has_many :documents, as: :people, :dependent => :destroy	
	accepts_nested_attributes_for :documents, allow_destroy: true


	protected
	def confirmation_required?
  		false
	end	

end
