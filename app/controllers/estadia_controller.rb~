class EstadiaController < ApplicationController
  before_action :set_estadia, only: [:show, :edit, :update, :destroy]

  # GET /estadia
  # GET /estadia.json
  def index
    @estadia = Estadia.all
  end

  # GET /estadia/1
  # GET /estadia/1.json
  def show
  end

  # GET /estadia/new
  def new
    @estadia = Estadia.new
  end

  # GET /estadia/1/edit
  def edit
  end

  # POST /estadia
  # POST /estadia.json
  def create
	
    @estadia = Estadia.new(estadia_params)
	
 	quarto = Quarto.find_by_numero_quarto(estadia_params[:numero_quarto])
	categoria = quarto.categoria_quarto_id
	categoriaQuarto = CategoriaQuarto.find(categoria)
	valor= categoriaQuarto.valor
	@estadia.categoria_quarto_id = categoria
	@estadia.valor_diaria = valor

    respond_to do |format|
      if @estadia.save
        format.html { redirect_to @estadia, notice: 'Estadia was successfully created.' }
        format.json { render :show, status: :created, location: @estadia }
      else
        format.html { render :new }
        format.json { render json: @estadia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estadia/1
  # PATCH/PUT /estadia/1.json
  def update
    respond_to do |format|
      if @estadia.update(estadia_params)
        format.html { redirect_to @estadia, notice: 'Estadia was successfully updated.' }
        format.json { render :show, status: :ok, location: @estadia }
      else
        format.html { render :edit }
        format.json { render json: @estadia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estadia/1
  # DELETE /estadia/1.json
  def destroy
    @estadia.destroy
    respond_to do |format|
      format.html { redirect_to estadia_index_url, notice: 'Estadia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estadia
      @estadia = Estadia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estadia_params
      params.require(:estadia).permit(:cpf, :numero_quarto, :categoria_quarto_id, :data_inicial, :data_final, :qtde_pessoas, :valor_diaria)
    end
end
