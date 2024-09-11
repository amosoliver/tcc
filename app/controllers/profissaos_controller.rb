class ProfissaosController < ApplicationController
  before_action :set_profissao, only: %i[ show edit update destroy ]

  # GET /profissaos or /profissaos.json
  def index
    @profissaos = Profissao.all
  end

  # GET /profissaos/1 or /profissaos/1.json
  def show
  end

  # GET /profissaos/new
  def new
    @profissao = Profissao.new
  end

  # GET /profissaos/1/edit
  def edit
  end

  # POST /profissaos or /profissaos.json
  def create
    @profissao = Profissao.new(profissao_params)

    respond_to do |format|
      if @profissao.save
        format.html { redirect_to profissao_url(@profissao), notice: "Profissao was successfully created." }
        format.json { render :show, status: :created, location: @profissao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profissao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profissaos/1 or /profissaos/1.json
  def update
    respond_to do |format|
      if @profissao.update(profissao_params)
        format.html { redirect_to profissao_url(@profissao), notice: "Profissao was successfully updated." }
        format.json { render :show, status: :ok, location: @profissao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profissao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profissaos/1 or /profissaos/1.json
  def destroy
    @profissao.destroy!

    respond_to do |format|
      format.html { redirect_to profissaos_url, notice: "Profissao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profissao
      @profissao = Profissao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profissao_params
      params.require(:profissao).permit(:nome)
    end
end
