class AmmsController < ApplicationController
  before_action :set_amm, only: [:show, :edit, :update, :destroy]

  # GET /amms
  # GET /amms.json
  def index
    @amms = Amm.all
  end

  # GET /amms/1
  # GET /amms/1.json
  def show
  end

  # GET /amms/new
  def new
    @amm = Amm.new
  end

  # GET /amms/1/edit
  def edit
  end

  # POST /amms
  # POST /amms.json
  def create
    @amm = Amm.new(amm_params)

    respond_to do |format|
      if @amm.save
        format.html { redirect_to @amm, notice: 'Amm was successfully created.' }
        format.json { render action: 'show', status: :created, location: @amm }
      else
        format.html { render action: 'new' }
        format.json { render json: @amm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amms/1
  # PATCH/PUT /amms/1.json
  def update
    respond_to do |format|
      if @amm.update(amm_params)
        format.html { redirect_to @amm, notice: 'Amm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @amm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amms/1
  # DELETE /amms/1.json
  def destroy
    @amm.destroy
    respond_to do |format|
      format.html { redirect_to amms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amm
      @amm = Amm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amm_params
      params.require(:amm).permit(:ac_type, :mm_referenz, :bauteil, :eff)
    end
end
