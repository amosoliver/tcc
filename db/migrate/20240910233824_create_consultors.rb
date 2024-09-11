class CreateConsultors < ActiveRecord::Migration[7.1]
  def change
    create_table :consultors do |t|
      t.integer :id_pessoa
      t.integer :id_profissao

      t.timestamps
    end
  end
end
