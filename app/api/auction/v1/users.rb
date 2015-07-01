class Auction::V1::Users < Grape::API
  helpers do 
    def user_params
      ActionController::Parameters.new(params).require(:user).permit!
    end	
  end	
  resources :users do 
    desc "create user"
    params do 
      requires :user, type: Hash do 
        requires :name, type: String, desc: "User name"
        requires :email, type: String, desc: "User email"
        optional :products_attributes, type: Hash, desc: "Product Hash"
      end	
    end 
    post do 
      begin 
      	@user = User.new(user_params)
      	@user.save
        {message: "Successfully created !", user: @user}
      rescue
        {message: "Something wrong"}
      end	
    end	
  end
end