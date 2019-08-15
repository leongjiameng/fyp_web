ActiveAdmin.register Staff do
  menu :parent => "Users",url: :admin_staffs_url, :priority => 3
  permit_params :name, :department_id, :utar_staff_no, :position, :user_id
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
  
  form do |f|
    f.inputs do
      f.input :name
      f.input :department_id, as: :select, :collection => Department.all.map{|u| ["#{u.name}",u.id]}
      f.input :user_id, :required => false , as: :select, :collection => User.all.map{|u| ["#{u.email}",u.id]}
      f.input :utar_staff_no
      f.input :position
    end
    f.actions
  end





end
