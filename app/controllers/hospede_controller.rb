class HospedeController < ApplicationController
  before_action :set_hospede, only: [:show, :edit, :update, :destroy]

  # GET /hospede
  # GET /hospede.json
  def index
    @hospede = Hospede.all
  end

  # GET /hospede/1
  # GET /hospede/1.json
  def show
  end

  # GET /hospede/new
  def new
    @hospede = Hospede.new
  end

  # GET /hospede/1/edit
  def edit
  end

  # POST /hospede
  # POST /hospede.json
  def create
    @hospede = Hospede.new(hospede_params)

    respond_to do |format|
      if @hospede.save
        format.html { redirect_to @hospede, notice: 'Hospede was successfully created.' }
        format.json { render :show, status: :created, location: @hospede }
      else
        format.html { render :new }
        format.json { render json: @hospede.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospede/1
  # PATCH/PUT /hospede/1.json
  def update
    respond_to do |format|
      if @hospede.update(hospede_params)
        format.html { redirect_to @hospede, notice: 'Hospede was successfully updated.' }
        format.json { render :show, status: :ok, location: @hospede }
      else
        format.html { render :edit }
        format.json { render json: @hospede.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospede/1
  # DELETE /hospede/1.json
  def destroy
    @hospede.destroy
    respond_to do |format|
      format.html { redirect_to hospede_index_url, notice: 'Hospede was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospede
      @hospede = Hospede.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospede_params
      params.require(:hospede).permit(:cpf, :nome, :placa, :nascimento, :rg)
    end
end
