ActiveAdmin.register VenueAllocation do
  menu :parent => "Examination",url: :admin_venue_allocations_url, :priority => 3
  permit_params :resource_id, :examination_id, :start_time, :end_time, :capacity_used
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
      f.input :examination_id, as: :select, :collection => Examination.all.map{|u| ["#{u.name}",u.id]}
      f.input :capacity_used
      f.input :resource_id, as: :select, :collection => Resource.all.map{|u| ["#{u.venue_no}",u.id]}
    end
    f.actions
  end

  controller do
    def create
      @venue_allocation=VenueAllocation.new(venue_allocation_params)
      @theExam=@venue_allocation.examination
      @venue_allocation.start_time=@theExam.start_time
      @venue_allocation.end_time=@theExam.end_time
      render :new unless @venue_allocation.save

      redirect_to :admin_venue_allocations, notice: 'The venue allocation has been recorded'

    end

    private

    def venue_allocation_params
      params.require(:venue_allocation).permit(:examination_id,:resource_id,:capacity_used)
    end

  end

end
