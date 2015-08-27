ActiveAdmin.register UserAlertMethod do
  permit_params :user_id, :agency_id, :method_type, :address
  
  
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  form do |f|
    f.inputs "User Alert Configuration" do
      f.input :user
      f.input :agency
      f.input :method_type, as: :select, collection: UserAlertMethod::ALERT_METHOD_TYPES
      f.input :address
    end
    
    f.actions 
  end

end
