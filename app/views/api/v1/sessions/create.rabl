object @event
	attributes :success, :code, :message
child(:result => "result") {|member|
	attributes :id ,:email
	node(:name) do |member|
		if member.student.blank?
			member.staff.name
		else
        	member.student.name
		 end
	end 
	node('auth_token') do
		member.authenticatable_salt
	end
	
}

