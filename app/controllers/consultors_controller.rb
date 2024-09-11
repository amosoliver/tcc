class ConsultorsController < ApplicationController
  before_action :set_consultor, only: %i[ show edit update destroy ]

  # GET /consultors or /consultors.json
  def index
    @consultors = Consultor.all
  end

  # GET /consultors/1 or /consultors/1.json
  def show
  end

  # GET /consultors/new
  def new
    @consultor = Consultor.new
  end

  # GET /consultors/1/edit
  def edit
  end

  # POST /consultors or /consultors.json
  def create
    @consultor = Consultor.new(consultor_params)

    respond_to do |format|
      if @consultor.save
        format.html { redirect_to consultor_url(@consultor), notice: "Consultor was successfully created." }
        format.json { render :show, status: :created, location: @consultor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consultor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultors/1 or /consultors/1.json
  def update
    respond_to do |format|
      if @consultor.update(consultor_params)
        format.html { redirect_to consultor_url(@consultor), notice: "Consultor was successfully updated." }
        format.json { render :show, status: :ok, location: @consultor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consultor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultors/1 or /consultors/1.json
  def destroy
    @consultor.destroy!

    respond_to do |format|
      format.html { redirect_to consultors_url, notice: "Consultor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultor
      @consultor = Consultor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consultor_params
      params.require(:consultor).permit(:id_pessoa, :id_profissao)
    end
end
