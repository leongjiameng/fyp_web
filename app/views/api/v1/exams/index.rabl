object @event
	attributes :success, :code , :message

child(:result => "exam") { 
	attributes :id
	node(:name) do |examreg|
		examreg.examination.name
	end 
	node(:start_time) do |examreg|
		examreg.examination.start_time
	end 
 
}
