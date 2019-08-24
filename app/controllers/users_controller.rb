class UsersController < ApplicationController
    skip_before_action :authenticate, only: [:create, :log_in]


    def create
        byebug
        #create new user

        user = User.new(
            first_name: create_user_params[:firstName],
            last_name: create_user_params[:lastName],
            username: create_user_params[:username],
            password: create_user_params[:password]
            )
        user.bank = 1000
        user.save
        byebug
        #generate token
        token =  generate_token(user)

        render json: {succes: true, user: user.to_json(only: [:first_name, :last_name, :user_name, :bank]), token: token}
    end 
    
    def log_in
        byebug
        #local strong params
        login_params = params.require(:user).permit(:username, :password)
        user = User.find_by(username: login_params["username"])
        password = login_params[:password]
        if user && user.authenticate(password)
            # generates token returns user
            @current_user = user
            render json: {success: true, token: generate_token(user), userObj: user}
        else 
            # returns false for frontend response
            render json: {success: false}
        end 
    end
    
    private

    def create_user_params
        params.require(:user).permit(:firstName, :lastName, :username, :password)
    end 

    # User Schema :
    #     t.string "first_name"
    #     t.string "last_name"
    #     t.string "username"
    #     t.integer "bank"
    #     t.datetime "created_at", precision: 6, null: false
    #     t.datetime "updated_at", precision: 6, null: false
    #   end
end
