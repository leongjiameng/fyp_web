ActiveAdmin.register ExamRegistered do
  permit_params :candidate_id, :examination_id, :venue_allocation_id
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
      f.input :candidate_id, as: :select, :collection => Candidate.all.map{|u| ["#{u.student.name}",u.id]}
      f.input :examination_id, as: :select, :collection => Examination.all.map{|u| ["#{u.name}",u.id]}
      f.input :venue_allocation_id, as: :select, :collection => VenueAllocation.all.map{|u| ["#{u.resource.venue_no}",u.id]}
    end
    f.actions
  end

  index do
    column :candidate
    column :examination
    column :venue_allocation
    actions
  end

  # controller do
  #   def create
  #     @exam_registered=ExamRegistered.new(exam_registered_params)
  #     @theExam=@exam_registered.examination
  #     @venue_allocation.start_time=@theExam.start_time
  #     @venue_allocation.end_time=@theExam.end_time
  #     render :new unless @venue_allocation.save

  #     redirect_to :admin_venue_allocations, notice: 'The venue allocation has been recorded'

  #   end

  #   private

  #   def venue_allocation_params
  #     params.require(:venue_allocation).permit(:examination_id,:resource_id,:capacity_used)
  #   end

  # end



end
