object @event
	attributes :success, :code , :message

child(:result => "result") { 
	attributes :id, :name, :utar_student_no
 node(:programme) do |student|
		student.programme.name
	end 
	node(:index_no) do |student|
		student.candidates.last.index_no
	end 
	node(:exam_session) do |student|
		student.candidates.last.exam_session.name
	end 
	node(:exam_taking) do |student|
		student.candidates.last.exam_registereds.count
	end 
}
