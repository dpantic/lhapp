class AircraftDocumentsController < ApplicationController
  before_action :set_aircraft_document, only: [:show, :edit, :update, :destroy]

  # GET /aircraft_documents
  # GET /aircraft_documents.json
  def index
    @aircraft_documents = AircraftDocument.all
  end

  # GET /aircraft_documents/1
  # GET /aircraft_documents/1.json
  def show
  end

  # GET /aircraft_documents/new
  def new
    @aircraft_document = AircraftDocument.new
  end

  # GET /aircraft_documents/1/edit
  def edit
  end

  # POST /aircraft_documents
  # POST /aircraft_documents.json
  def create
    @aircraft_document = AircraftDocument.new(aircraft_document_params)

    respond_to do |format|
      if @aircraft_document.save
        format.html { redirect_to @aircraft_document, notice: 'Aircraft document was successfully created.' }
        format.json { render action: 'show', status: :created, location: @aircraft_document }
      else
        format.html { render action: 'new' }
        format.json { render json: @aircraft_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aircraft_documents/1
  # PATCH/PUT /aircraft_documents/1.json
  def update
    respond_to do |format|
      if @aircraft_document.update(aircraft_document_params)
        format.html { redirect_to @aircraft_document, notice: 'Aircraft document was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @aircraft_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aircraft_documents/1
  # DELETE /aircraft_documents/1.json
  def destroy
    @aircraft_document.destroy
    respond_to do |format|
      format.html { redirect_to aircraft_documents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aircraft_document
      @aircraft_document = AircraftDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aircraft_document_params
      params.require(:aircraft_document).permit(:operator, :ac_type, :document, :revision, :rev_checked)
    end
end
