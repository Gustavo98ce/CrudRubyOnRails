class ProprietariosController < ApplicationController
  before_action :set_proprietario, only: %i[ show edit update destroy ]

  # GET /proprietarios or /proprietarios.json
  def index
    @proprietarios = Proprietario.all
  end

  # GET /proprietarios/1 or /proprietarios/1.json
  def show
  end

  # GET /proprietarios/new
  def new
    @proprietario = Proprietario.new
  end

  # GET /proprietarios/1/edit
  def edit
  end

  # POST /proprietarios or /proprietarios.json
  def create
    @proprietario = Proprietario.new(proprietario_params)

    respond_to do |format|
      if @proprietario.save
        format.html { redirect_to @proprietario, notice: "Proprietario foicriado com sucesso." }
        format.json { render :show, status: :created, location: @proprietario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proprietario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proprietarios/1 or /proprietarios/1.json
  def update
    respond_to do |format|
      if @proprietario.update(proprietario_params)
        format.html { redirect_to @proprietario, notice: "Proprietario foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @proprietario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proprietario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proprietarios/1 or /proprietarios/1.json
  def destroy
    @proprietario.destroy
    respond_to do |format|
      format.html { redirect_to proprietarios_url, notice: "Proprietario foi apagado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proprietario
      @proprietario = Proprietario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proprietario_params
      params.require(:proprietario).permit(:cpf_cnpj, :nome, :endereco)
    end
end
