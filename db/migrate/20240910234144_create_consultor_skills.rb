class CreateConsultorSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :consultor_skills do |t|
      t.integer :id_consultor
      t.integer :id_skill

      t.timestamps
    end
  end
end
