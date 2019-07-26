class UserContactInformationsController < ApplicationController
  before_action :set_user_contact_information, only: [:show, :edit, :update, :destroy]

   # GET /user_contact_informations
   # GET /user_contact_informations.json
   def index
      @user_contact_information = current_user.user_contact_information
   end

  # GET /user_contact_informations/1
  # GET /user_contact_informations/1.json
  def show
  end

  # GET /user_contact_informations/new
  def new
    @user_contact_information = UserContactInformation.new
  end

  # GET /user_contact_informations/1/edit
  def edit
  end

  # POST /user_contact_informations
  # POST /user_contact_informations.json
  def create
    @user_contact_information = UserContactInformation.new(user_contact_information_params)

    respond_to do |format|
      if @user_contact_information.save
        format.html { redirect_to user_contact_informations_path, notice: 'User contact information was successfully created.' }
        format.json { render :show, status: :created, location: @user_contact_information }
      else
        format.html { render :new }
        format.json { render json: @user_contact_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_contact_informations/1
  # PATCH/PUT /user_contact_informations/1.json
  def update
    respond_to do |format|
      if @user_contact_information.update(user_contact_information_params)
        format.html { redirect_to user_contact_informations_url, notice: 'User contact information was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_contact_information }
      else
        format.html { render :edit }
        format.json { render json: @user_contact_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_contact_informations/1
  # DELETE /user_contact_informations/1.json
  def destroy
    @user_contact_information.destroy
    respond_to do |format|
      format.html { redirect_to user_contact_informations_url, notice: 'User contact information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_contact_information
      @user_contact_information = UserContactInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_contact_information_params
      params.require(:user_contact_information).permit(:address_1, :address_2, :zipcode, :city, :state, :mobile_phone, :home_phone, :work_phone, :user_id)
    end
end
