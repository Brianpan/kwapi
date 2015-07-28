#swagger json document url path 
GrapeSwaggerRails.options.url = '/swagger_doc'
#the main api url path 
GrapeSwaggerRails.options.app_url = "http://192.168.168.180/api-service/api/v1"
GrapeSwaggerRails.options.app_name = "Kw"
# ##before filter before swagger ui
GrapeSwaggerRails.options.before_filter do |request|
  # 1. Inspect the `request` or access the Swagger UI controller via `self`.
  # 2. Check `current_user` or `can? :access, :api`, etc.
  # 3. Redirect or error in case of failure.
  # redirect_to(request.protocol + request.host_with_port) unless current_user
end