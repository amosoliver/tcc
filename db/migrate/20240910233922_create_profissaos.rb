class CreateProfissaos < ActiveRecord::Migration[7.1]
  def change
    create_table :profissaos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
