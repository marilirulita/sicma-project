class CotizacionMnsController < ApplicationController
  before_action :set_cotizacion_mn, only: %i[ show edit update destroy ]

  # GET /cotizacion_mns or /cotizacion_mns.json
  def index
    @cotizacion_mns = CotizacionMn.all
  end

  # GET /cotizacion_mns/1 or /cotizacion_mns/1.json
  def show
  end

  # GET /cotizacion_mns/new
  def new
    @cotizacion_mn = CotizacionMn.new
  end

  # GET /cotizacion_mns/1/edit
  def edit
  end

  # POST /cotizacion_mns or /cotizacion_mns.json
  def create
    @cotizacion_mn = CotizacionMn.new(cotizacion_mn_params)

    respond_to do |format|
      if @cotizacion_mn.save
        format.html { redirect_to cotizacion_mn_url(@cotizacion_mn), notice: "Cotizacion mn was successfully created." }
        format.json { render :show, status: :created, location: @cotizacion_mn }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cotizacion_mn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cotizacion_mns/1 or /cotizacion_mns/1.json
  def update
    respond_to do |format|
      if @cotizacion_mn.update(cotizacion_mn_params)
        format.html { redirect_to cotizacion_mn_url(@cotizacion_mn), notice: "Cotizacion mn was successfully updated." }
        format.json { render :show, status: :ok, location: @cotizacion_mn }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cotizacion_mn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotizacion_mns/1 or /cotizacion_mns/1.json
  def destroy
    @cotizacion_mn.destroy

    respond_to do |format|
      format.html { redirect_to cotizacion_mns_url, notice: "Cotizacion mn was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotizacion_mn
      @cotizacion_mn = CotizacionMn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cotizacion_mn_params
      params.require(:cotizacion_mn).permit(:cliente_id, :user_id, :job_id, :factura_id, :status)
    end
end
