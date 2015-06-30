require 'grape-swagger'
class Goods::API < Grape::API
   
  ##prefix of path
  
  mount Goods::Apiv1 => "v1"
  format :json
  ##swagger ui interfacer
  
  # get 'hello' do 
    # {name: "heeeee1!"}
  # end	
  # before do
  #   header['Access-Control-Allow-Origin'] = '*'
  #   header['Access-Control-Request-Method'] = '*'
  # end
  add_swagger_documentation :format => :json,
  							:api_version => 'v1',
  							# :mount_path => "api/swagger_doc",
  							:base_path  => "http://localhost:3000/api",
  							:hide_documentation_path => true
  # add_swagger_documentation
end	