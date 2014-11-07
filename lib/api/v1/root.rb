module API
  class Root < Grape::API
    prefix 'api'
    mount API::V1::Posts
    mount API::V1::Authors
    error_formatter :json, API::V1::ErrorFormatter
  end
end