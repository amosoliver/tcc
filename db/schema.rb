# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_09_13_152409) do
  create_table "agendas", force: :cascade do |t|
    t.datetime "data_hora"
    t.integer "id_consultor"
    t.integer "id_cliente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "data"
    t.string "hora"
  end

  create_table "clientes", force: :cascade do |t|
    t.integer "id_pessoa"
    t.integer "id_tipo_usuario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consultor_skills", force: :cascade do |t|
    t.integer "id_consultor"
    t.integer "id_skill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consultors", force: :cascade do |t|
    t.integer "id_pessoa"
    t.integer "id_profissao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.date "data_nascimento"
    t.string "telefone"
    t.string "email"
    t.string "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profissaos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "nome"
    t.integer "id_profissao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_usuarios", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "id_pessoa"
    t.integer "id_tipo_usuario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
