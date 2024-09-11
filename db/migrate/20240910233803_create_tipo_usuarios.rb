class CreateTipoUsuarios < ActiveRecord::Migration[7.1]
  def change
    create_table :tipo_usuarios do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
