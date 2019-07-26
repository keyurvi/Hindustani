class User < ApplicationRecord
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :omniauthable, omniauth_providers: [:google_oauth2,:facebook]
    has_and_belongs_to_many :oauth_credentials
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  	has_many :childrens, :class_name => "Child" , :dependent => :destroy
	accepts_nested_attributes_for :childrens, allow_destroy: true
  	has_many :documents, as: :people, :dependent => :destroy	
	accepts_nested_attributes_for :documents, allow_destroy: true


	def self.from_omniauth(access_token)
	    data = access_token.info
	    user = User.where(email: data['email']).first

	    # Uncomment the section below if you want users to be created if they don't exist
	    unless user
	        user = User.create(email: data['email'],
	           password: Devise.friendly_token[0,20]
	        )
	    end
    	user
	end


	protected
	def confirmation_required?
  		false
	end	

end
