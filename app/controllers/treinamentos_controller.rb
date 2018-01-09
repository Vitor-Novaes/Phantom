class TreinamentosController < ApplicationController
  before_action :set_treinamento, only: [:show, :edit, :update, :destroy]

  # GET /treinamentos
  # GET /treinamentos.json
  def index
    @treinamentos = Treinamento.all
  end

  # GET /treinamentos/1
  # GET /treinamentos/1.json
  def show
  end

  # GET /treinamentos/new
  def new
    @treinamento = Treinamento.new
  end

  # GET /treinamentos/1/edit
  def edit
  end

  # POST /treinamentos
  # POST /treinamentos.json
  def create
    @treinamento = Treinamento.new(treinamento_params)

    respond_to do |format|
      if @treinamento.save
        format.html { redirect_to @treinamento, notice: 'Treinamento criado com sucesso' }
        format.json { render :show, status: :created, location: @treinamento }
      else
        format.html { render :new }
        format.json { render json: @treinamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treinamentos/1
  # PATCH/PUT /treinamentos/1.json
  def update
    respond_to do |format|
      if @treinamento.update(treinamento_params)
        format.html { redirect_to @treinamento, notice: 'Treinamento foi atualizado com sucesso' }
        format.json { render :show, status: :ok, location: @treinamento }
      else
        format.html { render :edit }
        format.json { render json: @treinamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treinamentos/1
  # DELETE /treinamentos/1.json
  def destroy
    @treinamento.destroy
    respond_to do |format|
      format.html { redirect_to treinamentos_url, notice: 'Treinamento deletado com sucesso' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treinamento
      @treinamento = Treinamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def treinamento_params
      params.require(:treinamento).permit(:dia, :horario)
    end
end
