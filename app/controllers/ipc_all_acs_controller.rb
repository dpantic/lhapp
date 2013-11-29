class IpcAllAcsController < ApplicationController
  before_action :set_ipc_all_ac, only: [:show, :edit, :update, :destroy]

  # GET /ipc_all_acs
  # GET /ipc_all_acs.json
  def index
    @ipc_all_acs = IpcAllAc.all
  end

  # GET /ipc_all_acs/1
  # GET /ipc_all_acs/1.json
  def show
  end

  # GET /ipc_all_acs/new
  def new
    @ipc_all_ac = IpcAllAc.new
  end

  # GET /ipc_all_acs/1/edit
  def edit
  end

  # POST /ipc_all_acs
  # POST /ipc_all_acs.json
  def create
    @ipc_all_ac = IpcAllAc.new(ipc_all_ac_params)

    respond_to do |format|
      if @ipc_all_ac.save
        format.html { redirect_to @ipc_all_ac, notice: 'Ipc all ac was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ipc_all_ac }
      else
        format.html { render action: 'new' }
        format.json { render json: @ipc_all_ac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ipc_all_acs/1
  # PATCH/PUT /ipc_all_acs/1.json
  def update
    respond_to do |format|
      if @ipc_all_ac.update(ipc_all_ac_params)
        format.html { redirect_to @ipc_all_ac, notice: 'Ipc all ac was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ipc_all_ac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ipc_all_acs/1
  # DELETE /ipc_all_acs/1.json
  def destroy
    @ipc_all_ac.destroy
    respond_to do |format|
      format.html { redirect_to ipc_all_acs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ipc_all_ac
      @ipc_all_ac = IpcAllAc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ipc_all_ac_params
      params.require(:ipc_all_ac).permit(:system, :description, :add_infos, :part_number, :mat_nr, :add_material_info, :info)
    end
end
