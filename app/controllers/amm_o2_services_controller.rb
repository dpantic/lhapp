class AmmO2ServicesController < ApplicationController
  before_action :set_amm_o2_service, only: [:show, :edit, :update, :destroy]

  # GET /amm_o2_services
  # GET /amm_o2_services.json
  def index
    @amm_o2_services = AmmO2Service.all
  end

  # GET /amm_o2_services/1
  # GET /amm_o2_services/1.json
  def show
  end

  # GET /amm_o2_services/new
  def new
    @amm_o2_service = AmmO2Service.new
  end

  # GET /amm_o2_services/1/edit
  def edit
  end

  # POST /amm_o2_services
  # POST /amm_o2_services.json
  def create
    @amm_o2_service = AmmO2Service.new(amm_o2_service_params)

    respond_to do |format|
      if @amm_o2_service.save
        format.html { redirect_to @amm_o2_service, notice: 'Amm o2 service was successfully created.' }
        format.json { render action: 'show', status: :created, location: @amm_o2_service }
      else
        format.html { render action: 'new' }
        format.json { render json: @amm_o2_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amm_o2_services/1
  # PATCH/PUT /amm_o2_services/1.json
  def update
    respond_to do |format|
      if @amm_o2_service.update(amm_o2_service_params)
        format.html { redirect_to @amm_o2_service, notice: 'Amm o2 service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @amm_o2_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amm_o2_services/1
  # DELETE /amm_o2_services/1.json
  def destroy
    @amm_o2_service.destroy
    respond_to do |format|
      format.html { redirect_to amm_o2_services_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amm_o2_service
      @amm_o2_service = AmmO2Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amm_o2_service_params
      params.require(:amm_o2_service).permit(:ac_type, :operator, :system, :job, :amm_referenz)
    end
end
