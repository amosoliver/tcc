class CreateClientes < ActiveRecord::Migration[7.1]
  def change
    create_table :clientes do |t|
      t.integer :id_pessoa
      t.integer :id_tipo_usuario

      t.timestamps
    end
  end
end
