class ReservaController < ApplicationController
  before_action :set_reserva, only: [:show, :edit, :update, :destroy]

  # GET /reserva
  # GET /reserva.json
  def index
    @reserva = Reserva.all
  end

  # GET /reserva/1
  # GET /reserva/1.json
  def show
  end

  # GET /reserva/new
  # GET /reserva/new?numero_quarto=#
  def new
    @reserva = Reserva.new
 	if params[:numero_quarto].present?
		 @reserva.numero_quarto = params[:numero_quarto]
	end
  end

 
  # GET /reserva/1/edit
  def edit
  end

  # POST /reserva
  # POST /reserva.json
  def create
    @reserva = Reserva.new(reserva_params)

    respond_to do |format|
      if @reserva.save
        format.html { redirect_to @reserva, notice: 'Reserva was successfully created.' }
        format.json { render :show, status: :created, location: @reserva }
      else
        format.html { render :new }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reserva/1
  # PATCH/PUT /reserva/1.json
  def update
    respond_to do |format|
      if @reserva.update(reserva_params)
        format.html { redirect_to @reserva, notice: 'Reserva was successfully updated.' }
        format.json { render :show, status: :ok, location: @reserva }
      else
        format.html { render :edit }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserva/1
  # DELETE /reserva/1.json
  def destroy
    @reserva.destroy
    respond_to do |format|
      format.html { redirect_to reserva_index_url, notice: 'Reserva was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserva
      @reserva = Reserva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserva_params
      params.require(:reserva).permit(:data_inicial, :cpf, :numero_quarto, :data_final)
    end
end
