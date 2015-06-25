#swagger json document url path 
GrapeSwaggerRails.options.url = '/swagger_doc'
#the main api url path
GrapeSwaggerRails.options.app_url = 'http://localhost:3000/api'
GrapeSwaggerRails.options.app_name = "Carebest"
# ##before filter before swagger ui
# GrapeSwaggerRails.options.before_filter do |request|
#   # 1. Inspect the `request` or access the Swagger UI controller via `self`.
#   # 2. Check `current_user` or `can? :access, :api`, etc.
#   # 3. Redirect or error in case of failure.
# end