ActiveAdmin.register ClashingReport do
  permit_params :candidate_id, :exam_registered1_id, :exam_registered2_id, :message, :status
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
    column :candidate
    column :exam_registered1 
    column :exam_registered2
    column :message
    column :status
    actions
  end
  form do |f|
    f.inputs do
      f.input :candidate_id, as: :select, :collection => Candidate.all.map{|u| ["#{u.student.name}",u.id]}
      f.input :exam_registered1_id, as: :select, :collection => ExamRegistered.all.map{|u| ["#{u.id}",u.id]}
      f.input :exam_registered2_id, as: :select, :collection => ExamRegistered.all.map{|u| ["#{u.id}",u.id]}
      f.input :message
      f.input :status
    end
    f.actions
  end



end
