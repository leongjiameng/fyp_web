object @event
	attributes :success, :code , :message

child(:result => "exams") { 
	attributes :id
	node(:name) do |examreg|
		examreg.examination.subject.subject_name
	end 
	node(:start_time) do |examreg|
		examreg.examination.start_time.to_time.to_i*1000
	end 
 
}
