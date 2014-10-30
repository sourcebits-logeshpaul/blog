class UsersController < ApplicationController
	respond_to :json

	def index
		@users = User.all
		binding.pry
		@test = 8
		# render json: @users.to_json
		# render_for_api :first, :json => @users, :root => :users 
		#binding.pry
	end

	def create
		#params[:user] = {first_name: "", last_name: ""}
		# binding.pry
		@user = User.create(user_params)
	end

	def show
		#users/:id
		# binding.pry
		user = User.find(params[:id])
		render_for_api :first, :json => user, :root => :user
	end

	def update
		#params[:user] = {first_name: "", last_name: ""}
		user = User.find(params[:id])
		user.update_attributes(user_params)
		render_for_api :first, :json => user, :root => :user
	end

	def destroy
		user = User.find(params[:id])
		user.destroy!
		render json: {success: 200}.to_json
	end

	private

    def user_params
      # It's mandatory to specify the nested attributes that should be whitelisted.
      # If you use `permit` with just the key that points to the nested attributes hash,
      # it will return an empty hash.
      params.require(:user).permit(:first_name, :last_name)
    end
end
