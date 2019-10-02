class UsersController < ApplicationController
   before_action :authenticate_user!

   def index
      @users = User.all
   end

   def staff
      @users = User.all
   end

   def show
      @user = User.find(params[:id])
      @contact_information = @user.user_contact_information
   end

   def new
      @user = User.new
   end

   def edit
      @user = User.find(params[:id])
   end

   def create
      @user = User.new(user_params)
      if @user.save!
         redirect_to practice_path(@user)
      else
         redirect_to '/practice'
      end
   end

   def update_user
      @user = User.find(params[:id])
      if @user.update(user_params)
         redirect_to practice_path(@user)
      else
         redirect_to '/practice'
      end
   end

   def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to practice_index_path
   end

   private

      def user_params
         params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :languages, :role, :default_location)
      end


end
