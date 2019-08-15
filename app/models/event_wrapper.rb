class EventWrapper 
	attr_accessor :success, :result, :code, :message, :total, :type, :result2, :result3, :hide_automatically
	
	def initialize(success,result,code=200,message='',total=0,type='',result2=nil,result3=nil, hide_automatically=true)
		@success = success
		@result = result
		@code = code
		@message = message
		@total = total
		@type = type
		@result2 = result2
		@result3 = result3
		@hide_automatically = hide_automatically
	end
end