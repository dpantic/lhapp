class IpcBoeingsController < ApplicationController
  before_action :set_ipc_boeing, only: [:show, :edit, :update, :destroy]

  # GET /ipc_boeings
  # GET /ipc_boeings.json
  def index
    @ipc_boeings = IpcBoeing.all
  end

  # GET /ipc_boeings/1
  # GET /ipc_boeings/1.json
  def show
  end

  # GET /ipc_boeings/new
  def new
    @ipc_boeing = IpcBoeing.new
  end

  # GET /ipc_boeings/1/edit
  def edit
  end

  # POST /ipc_boeings
  # POST /ipc_boeings.json
  def create
    @ipc_boeing = IpcBoeing.new(ipc_boeing_params)

    respond_to do |format|
      if @ipc_boeing.save
        format.html { redirect_to @ipc_boeing, notice: 'Ipc boeing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ipc_boeing }
      else
        format.html { render action: 'new' }
        format.json { render json: @ipc_boeing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ipc_boeings/1
  # PATCH/PUT /ipc_boeings/1.json
  def update
    respond_to do |format|
      if @ipc_boeing.update(ipc_boeing_params)
        format.html { redirect_to @ipc_boeing, notice: 'Ipc boeing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ipc_boeing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ipc_boeings/1
  # DELETE /ipc_boeings/1.json
  def destroy
    @ipc_boeing.destroy
    respond_to do |format|
      format.html { redirect_to ipc_boeings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ipc_boeing
      @ipc_boeing = IpcBoeing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ipc_boeing_params
      params.require(:ipc_boeing).permit(:ac_type, :ata, :system, :description, :location, :add_infos, :part_number, :add_material_info, :ipc)
    end
end
