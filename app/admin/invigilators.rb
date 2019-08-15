ActiveAdmin.register Invigilator do
  menu :parent => "Examination",url: :admin_invigilators_url, :priority => 3
  permit_params :staff_id, :examination_id, :venue_allocation_id, :position
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end


  index do
    column :staff
    column :examination
    column :venue_allocation
    column :position
    actions
  end



  form do |f|
    f.inputs do
      f.input :staff_id, as: :select, :collection => Staff.all.map{|u| ["#{u.name}",u.id]}
      f.input :examination_id, as: :select, :collection => Examination.all.map{|u| ["#{u.name}",u.id]}
      f.input :venue_allocation_id, as: :select, :collection => VenueAllocation.all.map{|u| ["#{u.resource.venue_no}",u.id]}
      f.input :position
    end
    f.actions
  end
  
  
end
