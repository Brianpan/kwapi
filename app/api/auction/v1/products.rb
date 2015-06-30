class Auction::V1::Products < Grape::API
  helpers do
    def view_prefix
      "v1/products/"
    end
    
    # strong parameters filter
    def product_params

      ActionController::Parameters.new(params).require(:product)
    end
  end 

  # restful block 
  resources :products do
    get :foobar do 
  	  # {name: "yooooo!"}
  	  ##params
  	  @foobar = "hahaha"
  	  ##set jbuilder path under api
  	  env['api.tilt.template'] = view_prefix + 'foobar'

    end	
    
    desc "get product"
  	params do 
  	  requires :id, type: Integer, desc: "Product id"
  	end
  	get ':id' do
  	  begin  
        @product = Product.find(params[:id])
        {product: @product}
  	  rescue ActiveRecord::RecordNotFound
        {messsage: "record not found !"}
  	  end	
  	end	

    desc "remove product"
    params do 
  	  requires :id, type: Integer, desc: "Product id"
  	end
    delete ':id' do 
      begin 
        @product = Product.find(params[:id])
        @product.destroy
        {message: "Successfully destroy !"} 
      rescue ActiveRecord::RecordNotFound  
        {messsage: "record not found !"}
      end
    end

    desc "create product"
    params do 
      requires :product, type: Hash do 
        # requires :id, type: Integer
        requires :name, type: String, desc: "Product name"
        requires :price, type: Integer, desc: "Product price"
        optional :context, type: String, desc: "Product context"
      end	
    end
    post do 
      begin
        product = Product.new(product_params.permit!)
        product.save!
        {message: "Successfully created !"} 
      rescue Exception => e
        {message: e}
      end	
    end

  end 
end