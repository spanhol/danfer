class CategoriaQuartoController < ApplicationController
  before_action :set_categoria_quarto, only: [:show, :edit, :update, :destroy]

  # GET /categoria_quarto
  # GET /categoria_quarto.json
  def index
    @categoria_quarto = CategoriaQuarto.all
  end

  # GET /categoria_quarto/1
  # GET /categoria_quarto/1.json
  def show
  end

  # GET /categoria_quarto/new
  def new
    @categoria_quarto = CategoriaQuarto.new
  end

  # GET /categoria_quarto/1/edit
  def edit
  end

  # POST /categoria_quarto
  # POST /categoria_quarto.json
  def create
    @categoria_quarto = CategoriaQuarto.new(categoria_quarto_params)

    respond_to do |format|
      if @categoria_quarto.save
        format.html { redirect_to @categoria_quarto, notice: 'Categoria quarto was successfully created.' }
        format.json { render :show, status: :created, location: @categoria_quarto }
      else
        format.html { render :new }
        format.json { render json: @categoria_quarto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoria_quarto/1
  # PATCH/PUT /categoria_quarto/1.json
  def update
    respond_to do |format|
      if @categoria_quarto.update(categoria_quarto_params)
        format.html { redirect_to @categoria_quarto, notice: 'Categoria quarto was successfully updated.' }
        format.json { render :show, status: :ok, location: @categoria_quarto }
      else
        format.html { render :edit }
        format.json { render json: @categoria_quarto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria_quarto/1
  # DELETE /categoria_quarto/1.json
  def destroy
    @categoria_quarto.destroy
    respond_to do |format|
      format.html { redirect_to categoria_quarto_index_url, notice: 'Categoria quarto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria_quarto
      @categoria_quarto = CategoriaQuarto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categoria_quarto_params
      params.require(:categoria_quarto).permit(:descricao, :valor)
    end
end
