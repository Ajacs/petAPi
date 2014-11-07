module API
	class Root < Grape::API
		prefix 'api'
		mount API::V1::Root
    error_formatter :json, API::ErrorFormatter
		# mount API::V2::Root (this is the next version)
	end
end