class ConsultorController < ApplicationController
  before_action :set_consultor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! # Exige autenticação
  before_action :restrict_access_for_consultor, except: [:index, :show] # Restringe se for consultor
  def index
    # Exibe apenas usuários que são consultores
    @consultores = User.where(consultor: true)
  end

  def show
    # Encontra o consultor com base no parâmetro e na função de consultor
    @consultor = User.find(params[:id])
    unless @consultor.consultor?
      redirect_to root_path, alert: "Consultor não encontrado"
      return
    end
  
    # Carrega as disponibilidades do consultor ordenadas por data e hora
    disponibilidades = @consultor.disponibilidade_consultors.order(:data, :hora_inicio)
  
    # Mapeia as disponibilidades e verifica o status 'Ocupado' ou 'Agendar'
    @resultado = disponibilidades.map do |disponibilidade|
      agendamento = Agendamento.find_by(disponibilidade_id: disponibilidade.id)
      status = agendamento.present? ? 'Ocupado' : 'Agendar'
      cliente = agendamento&.cliente # Assumindo que `cliente` é uma associação no modelo `Agendamento`
      { disponibilidade: disponibilidade, status: status, cliente: cliente }
    end
  end
  
  
  
  
  
  def new
    # lógica para mostrar o formulário de novo consultor
    @consultor = User.new
  end

  def create
    # lógica para criar um novo consultor
    @consultor = User.new(consultor_params)
    if @consultor.save
      redirect_to @consultor, notice: 'Consultor criado com sucesso.'
    else
      render :new
    end
  end

  def edit
    # lógica para mostrar o formulário de edição
  end

  def update
    # lógica para atualizar um consultor existente
    if @consultor.update(consultor_params)
      redirect_to @consultor, notice: 'Consultor atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    # lógica para excluir um consultor
    @consultor.destroy
    redirect_to consultores_url, notice: 'Consultor excluído com sucesso.'
  end

  private

  def set_consultor
    # Define o consultor a partir do ID e certifica-se de que é um consultor
    @consultor = User.find(params[:id])
    redirect_to root_path, alert: 'Usuário não é um consultor.' unless @consultor.consultor?
  end

  def consultor_params
    # Permite apenas parâmetros permitidos para um consultor
    params.require(:user).permit(:nome, :email, :especialidade_id, :cidade_id, :descricao, :foto, :consultor)
  end

  def restrict_access_for_consultor
    if !current_user.consultor
      redirect_to consultors_path, alert: "Acesso restrito para consultor"
    end
  end
end
