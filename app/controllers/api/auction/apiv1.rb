class Goods::Apiv1 < Grape::API
  format :json
  ##grape jbuilder settings
  formatter :json, Grape::Formatter::Jbuilder
  
  ##set prefix after parent module class
  # version 'v1', using: :path
  
  
  get :goodie do 
    {name: "heeeee!"}
  end	

  get :foobar do 
  	# {name: "yooooo!"}
  	##params
  	@foobar = "hahaha"
  	##set jbuilder path under api
  	env['api.tilt.template'] = 'v1/goods/foobar'
  end	

  
end	