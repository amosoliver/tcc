class CreatePessoas < ActiveRecord::Migration[7.1]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :cpf
      t.date :data_nascimento
      t.string :telefone
      t.string :email
      t.string :endereco

      t.timestamps
    end
  end
end
