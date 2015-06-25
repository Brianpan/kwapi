require 'grape-swagger'
class Goods::API < Grape::API
   
  ##prefix of path to v1 in api v1
  mount Goods::Apiv1 => "v1"
  

  before do
    header['Access-Control-Allow-Origin'] = '*'
    header['Access-Control-Request-Method'] = '*'
  end
  # put in the last
  # grape swagger setting
  # api_version set specific version to load
  # base_path this api's path in route
  # hide documentation path : hider the document
  add_swagger_documentation :format => :json,
  							# :api_version => 'v1',
  							# :mount_path => "api/swagger_doc",
  							:base_path  => "http://localhost:3000/api",
  							:hide_documentation_path => true
end	