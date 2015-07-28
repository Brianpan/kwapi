class Kw::Apiv1 < Grape::API
  default_format :json
  ## uncomment this will get swagger wrong
  # format :json
  ##grape jbuilder settings
  formatter :json, Grape::Formatter::Jbuilder
  
  ##set prefix after parent module class
  # version 'v1', using: :path
  
  ##mount sub api s
  mount Kw::V1::Products
  mount Kw::V1::Users

  # put in the
  # grape swagger setting
  # api_version set specific version to load
  # base_path this api's path in route
  # hide documentation path : hider the document
  add_swagger_documentation :format => :json,
                # :api_version => 'v1',
                # :mount_path => "api/swagger_doc",
                :base_path  => "http://localhost:3000/api/v1",
                :hide_documentation_path => true
end	