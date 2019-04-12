class RenameColumnName < ActiveRecord::Migration[5.2]
	def self.up
		rename_column :documents, :status, :people_role
	end

	def self.down
		# rename back if you need or do something else or do nothing
	end
end
