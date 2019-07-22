class UsersController < ApplicationController

   before_action :authenticate_user!


   def index
      @users = User.all
      @patients = Patient.all
      @Library = Library.all
   end

   def staff
      @users = User.all
   end


end
