class ConsultorSkillsController < ApplicationController
  before_action :set_consultor_skill, only: %i[ show edit update destroy ]

  # GET /consultor_skills or /consultor_skills.json
  def index
    @consultor_skills = ConsultorSkill.all
  end

  # GET /consultor_skills/1 or /consultor_skills/1.json
  def show
  end

  # GET /consultor_skills/new
  def new
    @consultor_skill = ConsultorSkill.new
  end

  # GET /consultor_skills/1/edit
  def edit
  end

  # POST /consultor_skills or /consultor_skills.json
  def create
    @consultor_skill = ConsultorSkill.new(consultor_skill_params)

    respond_to do |format|
      if @consultor_skill.save
        format.html { redirect_to consultor_skill_url(@consultor_skill), notice: "Consultor skill was successfully created." }
        format.json { render :show, status: :created, location: @consultor_skill }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consultor_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultor_skills/1 or /consultor_skills/1.json
  def update
    respond_to do |format|
      if @consultor_skill.update(consultor_skill_params)
        format.html { redirect_to consultor_skill_url(@consultor_skill), notice: "Consultor skill was successfully updated." }
        format.json { render :show, status: :ok, location: @consultor_skill }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consultor_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultor_skills/1 or /consultor_skills/1.json
  def destroy
    @consultor_skill.destroy!

    respond_to do |format|
      format.html { redirect_to consultor_skills_url, notice: "Consultor skill was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultor_skill
      @consultor_skill = ConsultorSkill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consultor_skill_params
      params.require(:consultor_skill).permit(:id_consultor, :id_skill)
    end
end
