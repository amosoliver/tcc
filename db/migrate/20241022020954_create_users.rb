class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :encrypted_password
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.boolean :consultor
      t.integer :especialidade_id
      t.integer :cidade_id

      t.timestamps
    end
  end
end
