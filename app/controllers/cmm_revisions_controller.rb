class CmmRevisionsController < ApplicationController
  before_action :set_cmm_revision, only: [:show, :edit, :update, :destroy]

  # GET /cmm_revisions
  # GET /cmm_revisions.json
  def index
    @cmm_revisions = CmmRevision.all
  end

  # GET /cmm_revisions/1
  # GET /cmm_revisions/1.json
  def show
  end

  # GET /cmm_revisions/new
  def new
    @cmm_revision = CmmRevision.new
  end

  # GET /cmm_revisions/1/edit
  def edit
  end

  # POST /cmm_revisions
  # POST /cmm_revisions.json
  def create
    @cmm_revision = CmmRevision.new(cmm_revision_params)

    respond_to do |format|
      if @cmm_revision.save
        format.html { redirect_to @cmm_revision, notice: 'Cmm revision was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cmm_revision }
      else
        format.html { render action: 'new' }
        format.json { render json: @cmm_revision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cmm_revisions/1
  # PATCH/PUT /cmm_revisions/1.json
  def update
    respond_to do |format|
      if @cmm_revision.update(cmm_revision_params)
        format.html { redirect_to @cmm_revision, notice: 'Cmm revision was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cmm_revision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cmm_revisions/1
  # DELETE /cmm_revisions/1.json
  def destroy
    @cmm_revision.destroy
    respond_to do |format|
      format.html { redirect_to cmm_revisions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cmm_revision
      @cmm_revision = CmmRevision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cmm_revision_params
      params.require(:cmm_revision).permit(:ac_type, :type, :manufacturer, :part_number, :model, :cmm, :revision_date, :issue, :rev_checked, :not_in_use)
    end
end
