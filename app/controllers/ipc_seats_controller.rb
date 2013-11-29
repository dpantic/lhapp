class IpcSeatsController < ApplicationController
  before_action :set_ipc_seat, only: [:show, :edit, :update, :destroy]

  # GET /ipc_seats
  # GET /ipc_seats.json
  def index
    @ipc_seats = IpcSeat.all
  end

  # GET /ipc_seats/1
  # GET /ipc_seats/1.json
  def show
  end

  # GET /ipc_seats/new
  def new
    @ipc_seat = IpcSeat.new
  end

  # GET /ipc_seats/1/edit
  def edit
  end

  # POST /ipc_seats
  # POST /ipc_seats.json
  def create
    @ipc_seat = IpcSeat.new(ipc_seat_params)

    respond_to do |format|
      if @ipc_seat.save
        format.html { redirect_to @ipc_seat, notice: 'Ipc seat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ipc_seat }
      else
        format.html { render action: 'new' }
        format.json { render json: @ipc_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ipc_seats/1
  # PATCH/PUT /ipc_seats/1.json
  def update
    respond_to do |format|
      if @ipc_seat.update(ipc_seat_params)
        format.html { redirect_to @ipc_seat, notice: 'Ipc seat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ipc_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ipc_seats/1
  # DELETE /ipc_seats/1.json
  def destroy
    @ipc_seat.destroy
    respond_to do |format|
      format.html { redirect_to ipc_seats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ipc_seat
      @ipc_seat = IpcSeat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ipc_seat_params
      params.require(:ipc_seat).permit(:manufacturer, :modell_series, :description, :add_infos, :part_number, :add_material_info, :cmm)
    end
end
