class CreateSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :skills do |t|
      t.string :nome
      t.integer :id_profissao

      t.timestamps
    end
  end
end
