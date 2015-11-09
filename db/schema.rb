# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151025184803) do

  create_table "categoria_quarto", force: :cascade do |t|
    t.string   "descricao"
    t.float    "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorias_quartos", force: :cascade do |t|
    t.float    "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estadia", force: :cascade do |t|
    t.string   "cpf"
    t.integer  "numero_quarto"
    t.integer  "categoria_quarto_id"
    t.date     "data_inicial"
    t.date     "data_final"
    t.integer  "qtde_pessoas"
    t.float    "valor_diaria"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "hospede", force: :cascade do |t|
    t.string   "cpf"
    t.string   "nome"
    t.string   "placa"
    t.date     "nascimento"
    t.string   "rg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospedes", force: :cascade do |t|
    t.string   "cpf"
    t.string   "nome"
    t.string   "placa"
    t.date     "nascimento"
    t.string   "rg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pagamentos", force: :cascade do |t|
    t.date     "data"
    t.integer  "dias"
    t.integer  "id_estadia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quarto", force: :cascade do |t|
    t.integer  "numero_quarto"
    t.integer  "andar"
    t.integer  "categoria_quarto_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "quartos", force: :cascade do |t|
    t.integer  "numero_quarto"
    t.integer  "andar"
    t.integer  "categoria_quarto_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "reserva", force: :cascade do |t|
    t.date     "data_inicial"
    t.string   "cpf"
    t.integer  "numero_quarto"
    t.date     "data_final"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.date     "data_inicial"
    t.string   "cpf"
    t.integer  "numero_quarto"
    t.date     "data_final"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
