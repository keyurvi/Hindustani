class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
		t.references :people, polymorphic: true, index: true
		t.column :status, :integer, default: 0
      	t.timestamps
    end
  end
end
