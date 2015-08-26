ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation,:username, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip,  agency_ids: [] 
  index do
    selectable_column
    id_column
    column :email
    column :username
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :username
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :username
      f.input :password
      f.input :password_confirmation
    end
    f.inputs 'Agencies' do
        f.input :agencies, :as => :select, :input_html => {:multiple => true}
    end
    f.actions
  end
  

  controller do

    def update
      if params[:user][:password].blank?
        params[:user].delete("password")
        params[:user].delete("password_confirmation")
      end
      super
    end

  end
  
  

end
