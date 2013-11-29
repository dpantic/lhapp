class SmpReferenzsController < ApplicationController
  before_action :set_smp_referenz, only: [:show, :edit, :update, :destroy]

  # GET /smp_referenzs
  # GET /smp_referenzs.json
  def index
    @smp_referenzs = SmpReferenz.all
  end

  # GET /smp_referenzs/1
  # GET /smp_referenzs/1.json
  def show
  end

  # GET /smp_referenzs/new
  def new
    @smp_referenz = SmpReferenz.new
  end

  # GET /smp_referenzs/1/edit
  def edit
  end

  # POST /smp_referenzs
  # POST /smp_referenzs.json
  def create
    @smp_referenz = SmpReferenz.new(smp_referenz_params)

    respond_to do |format|
      if @smp_referenz.save
        format.html { redirect_to @smp_referenz, notice: 'Smp referenz was successfully created.' }
        format.json { render action: 'show', status: :created, location: @smp_referenz }
      else
        format.html { render action: 'new' }
        format.json { render json: @smp_referenz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smp_referenzs/1
  # PATCH/PUT /smp_referenzs/1.json
  def update
    respond_to do |format|
      if @smp_referenz.update(smp_referenz_params)
        format.html { redirect_to @smp_referenz, notice: 'Smp referenz was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @smp_referenz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smp_referenzs/1
  # DELETE /smp_referenzs/1.json
  def destroy
    @smp_referenz.destroy
    respond_to do |format|
      format.html { redirect_to smp_referenzs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smp_referenz
      @smp_referenz = SmpReferenz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smp_referenz_params
      params.require(:smp_referenz).permit(:spm_ref, :bauteil)
    end
end
