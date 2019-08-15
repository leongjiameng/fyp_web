object @event
	attributes :success, :code, :message

child(:result => "result") { |member|
	attributes :id ,:email
	node('auth_token') do
		member.authenticatable_salt
	end
	
}

