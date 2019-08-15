object @event
	attributes :success, :code , :message

child(:result => "result") { 
	attributes :id, :name, :position
	node(:department) do |staff|
		staff.department.name
	end 
 
}
