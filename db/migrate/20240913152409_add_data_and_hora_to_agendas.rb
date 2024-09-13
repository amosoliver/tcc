class AddDataAndHoraToAgendas < ActiveRecord::Migration[7.1]
  def change
    add_column :agendas, :data, :string
    add_column :agendas, :hora, :string
  end
end
