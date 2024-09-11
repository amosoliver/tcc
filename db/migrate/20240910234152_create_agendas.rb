class CreateAgendas < ActiveRecord::Migration[7.1]
  def change
    create_table :agendas do |t|
      t.datetime :data_hora
      t.integer :id_consultor
      t.integer :id_cliente

      t.timestamps
    end
  end
end
