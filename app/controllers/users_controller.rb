class UsersController < ApplicationController
   before_action :authenticate_user!

   def index
      @users = User.all
      @patients = Patient.all
      @library = Library.all
      @intake_notes = IntakeNote.all
      @progress_notes = ProgressNote.all
      @treatment_plans = TreatmentPlan.all
      @termination_notes = TerminationNote.all
      @notes = 0

      if @intake_notes
         @notes += @intake_notes.length
      end

      if @progress_notes
         @notes += @intake_notes.length
      end

      if @treatment_plans
         @notes += @treatment_plans.length
      end

      if @termination_notes
         @notes += @intake_notes.length
      end

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
         redirect_to users_admin_path(@user)
      else
         redirect_to '/'
      end
   end

   def update_user
      @user = User.find(params[:id])
      if @user.update(user_params)
         redirect_to users_admin_path(@user)
      else
         redirect_to
      end
   end

   def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to 'users_admin/staff'
   end

   private

      def user_params
         params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :languages, :role, :default_location)
      end


end
