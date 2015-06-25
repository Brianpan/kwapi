class Goods::Apiv1 < Grape::API
  format :json
  ##set prefix after parent module class
  version 'v1', using: :path
  get :goodie do 
    {name: "heeeee!"}
  end	
end	