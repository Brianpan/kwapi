require 'grape-swagger'
class Auction::API < Grape::API
   
  ##prefix of path to v1 in api v1
  mount Auction::Apiv1 => "v1"
  
  before do
    header['Access-Control-Allow-Origin'] = '*'
    header['Access-Control-Request-Method'] = '*'
  end
  
  
end	