class TreatmentPlansController < ApplicationController
  before_action :set_treatment_plan, only: [:show, :edit, :update, :destroy]
  layout 'patient_layout'

  # GET /treatment_plans
  # GET /treatment_plans.json
  def index
    @treatment_plans = TreatmentPlan.all
  end

  # GET /treatment_plans/1
  # GET /treatment_plans/1.json
  def show
     @patient = Patient.find(params[:patient_id])
  end

   # GET /treatment_plans/new
   def new
      @users = User.all
      @patient = Patient.find(params[:patient_id])
      @treatment_plan = @patient.treatment_plans.build
   end

   # GET /treatment_plans/1/edit
   def edit
      @patient = Patient.find(params[:patient_id])
      @treatment_plan = @patient.treatment_plans.find(params[:id])
      @users = User.all
   end

   # POST /treatment_plans
   # POST /treatment_plans.json
   def create
      @patient = Patient.find(params[:patient_id])
      @treatment_plan = @patient.treatment_plans.new(treatment_plan_params)

      respond_to do |format|
         if @treatment_plan.save
            format.html { redirect_to patient_path(@patient), notice: 'Treatment plan was successfully created.'}
            format.json { render :show, status: :created, location: @treatment_plan }
         else
            format.html { render :new }
            format.json { render json: @treatment_plan.errors, status: :unprocessable_entity }
         end
      end
   end

   # PATCH/PUT /treatment_plans/1
   # PATCH/PUT /treatment_plans/1.json
   def update
      @patient = Patient.find(params[:patient_id])
      @treatment_plan = @patient.treatment_plans.find(params[:id])

      respond_to do |format|
         if @treatment_plan.update(treatment_plan_params)
            format.html { redirect_to patient_path(@patient), notice: 'Treatment plan was successfully updated.' }
            format.json { render :show, status: :ok, location: @treatment_plan }
         else
            format.html { render :edit }
            format.json { render json: @treatment_plan.errors, status: :unprocessable_entity }
         end
      end
   end

   # DELETE /treatment_plans/1
   # DELETE /treatment_plans/1.json
   def destroy
      @patient = Patient.find(params[:patient_id])
      @treatment_plan = @patient.treatment_plans.find(params[:id])
      @treatment_plan.destroy

      respond_to do |format|
         format.html { redirect_to patient_path(@patient), notice: 'Treatment plan was successfully destroyed.' }
         format.json { head :no_content }
      end
   end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treatment_plan
      @treatment_plan = TreatmentPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def treatment_plan_params
      params.require(:treatment_plan).permit(:user_id, :patient_id, :date, :time, :diagnosis_description, :diagnostic_justification, :presenting_problem, :treatment_goal, :goal_estimated_completion, :objective, :treatment_strategy, :objective_estimated_completion, :treatment_frequency, :clinician_declaration, :clinician_signature)
    end
end
