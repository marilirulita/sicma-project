class FacturasController < ApplicationController
  before_action :set_factura, only: %i[ show edit update destroy ]

  # GET /facturas or /facturas.json
  def index
    @facturas = Factura.all
  end

  # GET /facturas/1 or /facturas/1.json
  def show
  end

  # GET /facturas/new
  def new
    @factura = Factura.new
  end

  # GET /facturas/1/edit
  def edit
  end

  # POST /facturas or /facturas.json
  def create
    @factura = Factura.new(factura_params)

    respond_to do |format|
      if @factura.save
        format.html { redirect_to factura_url(@factura), notice: "Factura was successfully created." }
        format.json { render :show, status: :created, location: @factura }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facturas/1 or /facturas/1.json
  def update
    respond_to do |format|
      if @factura.update(factura_params)
        format.html { redirect_to factura_url(@factura), notice: "Factura was successfully updated." }
        format.json { render :show, status: :ok, location: @factura }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facturas/1 or /facturas/1.json
  def destroy
    @factura.destroy

    respond_to do |format|
      format.html { redirect_to facturas_url, notice: "Factura was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factura
      @factura = Factura.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def factura_params
      params.require(:factura).permit(:cliente_id, :total)
    end
end
