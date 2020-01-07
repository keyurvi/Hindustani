ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_name, :user_aadhar_number, :user_birthdate, :father_name, :father_aadhar_number, :father_birthdate, :mother_name, :mother_aadhar_number, :mother_birthdate, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :confirmation_token, :confirmed_at, :confirmation_sent_at, :failed_attempts, :unlock_token, :locked_at, :email


  # actions :all, except: [:update, :destroy]
  config.sort_order = 'user_name_des'
  scope :all, default: true
  controller
  
  controller do
      # disable all except view / index
      actions :all, :except => [:destroy]
  end


  index pagination_total: true do
      selectable_column
      id_column
      column :user_name
      column :user_aadhar_number
      column :user_birthdate
      column :father_name
      column :father_aadhar_number
      column :father_birthdate
      column :mother_name
      column :mother_aadhar_number
      column :mother_birthdate
      actions
    end
    form do |f|
      f.semantic_errors *f.object.errors.keys
      panel object.user_name do 
         f.inputs "Hindustani" do
            f.input :user_name
        end
      end
      f.actions
    end

  show do
    tabs do
      tab "User Details" do
        attributes_table_for user do
          row :id
          row :user_name
          row :user_aadhar_number
          row :user_birthdate
        end
      end
      tab "Father Details" do
        attributes_table_for user do          
          row :father_name
          row :father_aadhar_number
          row :father_birthdate
        end
      end
      tab "Mother Details" do
        attributes_table_for user do          
          row :mother_name
          row :mother_aadhar_number
          row :mother_birthdate
        end
      end
    end
  end

  #
  # or
  #
  # permit_params do
  #   permitted = [:user_name, :user_aadhar_number, :user_birthdate, :father_name, :father_aadhar_number, :father_birthdate, :mother_name, :mother_aadhar_number, :mother_birthdate, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :confirmation_token, :confirmed_at, :confirmation_sent_at, :failed_attempts, :unlock_token, :locked_at, :email]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
