class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]
  layout 'patient_layout'


   def index
      @patient = Patient.find(params[:patient_id])
      @documents = @patient.documents
   end

   # GET /documents/1
   # GET /documents/1.json
   def show
      @patient = Patient.find(params[:patient_id])

   end

   # GET /documents/new
   def new
      @users = User.all
      @patient = Patient.find(params[:patient_id])
      @document = @patient.documents.build
   end

   # GET /documents/1/edit
   def edit
      @users = User.all
      @patient = Patient.find(params[:patient_id])
      @document = @patient.documents.find(params[:id])
   end

   # POST /documents
   # POST /documents.json
   def create
      @patient = Patient.find(params[:patient_id])
      @document = @patient.documents.new(document_params)

      respond_to do |format|
         if @document.save
            format.html { redirect_to patient_documents_path(@patient), notice: 'Document was successfully created.' }
            format.json { render :show, status: :created, location: @document }
         else
            format.html { render :new }
            format.json { render json: @document.errors, status: :unprocessable_entity }
         end
      end
   end

   # PATCH/PUT /documents/1
   # PATCH/PUT /documents/1.json
   def update
      @patient = Patient.find(params[:patient_id])
      @document = @patient.documents.find(params[:id])

      respond_to do |format|
         if @document.update(document_params)
            format.html { redirect_to patient_documents_path(@patient), notice: 'Document was successfully updated.' }
            format.json { render :show, status: :ok, location: @document }
         else
            format.html { render :edit }
            format.json { render json: @document.errors, status: :unprocessable_entity }
         end
      end
   end

   # DELETE /documents/1
   # DELETE /documents/1.json
   def destroy
      @patient = Patient.find(params[:patient_id])
      @document = @patient.documents.find(params[:id])
      @document.destroy

      respond_to do |format|
         format.html { redirect_to patient_documents_path(@patient), notice: 'Document was successfully destroyed.' }
         format.json { head :no_content }
      end
   end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:patient_id, :name, {file: []}, :user_id)
    end
end
