ActiveAdmin.register User do
  menu :parent => "Users",url: :admin_users_url, :priority => 3
  permit_params :email, :password
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
    column :email
    actions
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
    end
    f.actions
  end
end
