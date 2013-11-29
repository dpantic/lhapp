class ConsumableMaterialsController < ApplicationController
  before_action :set_consumable_material, only: [:show, :edit, :update, :destroy]

  # GET /consumable_materials
  # GET /consumable_materials.json
  def index
    @consumable_materials = ConsumableMaterial.all
  end

  # GET /consumable_materials/1
  # GET /consumable_materials/1.json
  def show
  end

  # GET /consumable_materials/new
  def new
    @consumable_material = ConsumableMaterial.new
  end

  # GET /consumable_materials/1/edit
  def edit
  end

  # POST /consumable_materials
  # POST /consumable_materials.json
  def create
    @consumable_material = ConsumableMaterial.new(consumable_material_params)

    respond_to do |format|
      if @consumable_material.save
        format.html { redirect_to @consumable_material, notice: 'Consumable material was successfully created.' }
        format.json { render action: 'show', status: :created, location: @consumable_material }
      else
        format.html { render action: 'new' }
        format.json { render json: @consumable_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consumable_materials/1
  # PATCH/PUT /consumable_materials/1.json
  def update
    respond_to do |format|
      if @consumable_material.update(consumable_material_params)
        format.html { redirect_to @consumable_material, notice: 'Consumable material was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @consumable_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consumable_materials/1
  # DELETE /consumable_materials/1.json
  def destroy
    @consumable_material.destroy
    respond_to do |format|
      format.html { redirect_to consumable_materials_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consumable_material
      @consumable_material = ConsumableMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consumable_material_params
      params.require(:consumable_material).permit(:product_type, :description, :add_infos, :mat_nr, :part_number)
    end
end
