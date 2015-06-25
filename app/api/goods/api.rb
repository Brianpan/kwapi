class Goods::API < Grape::API
  ##prefix of path
  prefix 'api/goods'	
  mount Goods::Apiv1
  format :json

  get :hello do 
    {hello: "world"}
  end	

end	