class CotizacionDllsController < ApplicationController
  before_action :set_cotizacion_dll, only: %i[ show edit update destroy ]

  # GET /cotizacion_dlls or /cotizacion_dlls.json
  def index
    @cotizacion_dlls = CotizacionDll.all
  end

  # GET /cotizacion_dlls/1 or /cotizacion_dlls/1.json
  def show
  end

  # GET /cotizacion_dlls/new
  def new
    @cotizacion_dll = CotizacionDll.new
  end

  # GET /cotizacion_dlls/1/edit
  def edit
  end

  # POST /cotizacion_dlls or /cotizacion_dlls.json
  def create
    @cotizacion_dll = CotizacionDll.new(cotizacion_dll_params)

    respond_to do |format|
      if @cotizacion_dll.save
        format.html { redirect_to cotizacion_dll_url(@cotizacion_dll), notice: "Cotizacion dll was successfully created." }
        format.json { render :show, status: :created, location: @cotizacion_dll }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cotizacion_dll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cotizacion_dlls/1 or /cotizacion_dlls/1.json
  def update
    respond_to do |format|
      if @cotizacion_dll.update(cotizacion_dll_params)
        format.html { redirect_to cotizacion_dll_url(@cotizacion_dll), notice: "Cotizacion dll was successfully updated." }
        format.json { render :show, status: :ok, location: @cotizacion_dll }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cotizacion_dll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotizacion_dlls/1 or /cotizacion_dlls/1.json
  def destroy
    @cotizacion_dll.destroy

    respond_to do |format|
      format.html { redirect_to cotizacion_dlls_url, notice: "Cotizacion dll was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotizacion_dll
      @cotizacion_dll = CotizacionDll.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cotizacion_dll_params
      params.require(:cotizacion_dll).permit(:cliente_id, :user_id, :job_id, :factura_id, :status)
    end
end
