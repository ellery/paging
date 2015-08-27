ActiveAdmin.register ToneSet do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :a_tone,:b_tone,:long_tone,:a_tone_time,:b_tone_time,:long_tone_time, :record_delay, :ignore_after, :agency_id, receiver_ids: []
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  form do |f|
    
    f.inputs "Tone Set Configuration" do
      f.input :agency
      f.input :receivers
      f.input :ignore_after, :input_html => { :value => 60 }
      f.input :record_delay, :input_html => { :value => 2.5 }
    end
    
    f.inputs "A/B Tone Set" do
      f.input :a_tone
      f.input :a_tone_time
      f.input :b_tone
      f.input :b_tone_time
    end
    
    f.inputs "Long Tone Set" do 
      f.input :long_tone
      f.input :long_tone_time
    end
    
    f.actions
  end
  
  


end
