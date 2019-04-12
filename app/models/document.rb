class Document < ApplicationRecord
	enum people_role: [ :User, :Father, :Mother]
  	has_attached_file :attachment, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :attachment, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
	belongs_to :people, polymorphic: true
end
