object @event
	attributes :success, :code , :message

child(:result => "result") { 
	attributes :id, :message, :status
}
