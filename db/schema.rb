# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_06_171247) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "proprietarios", force: :cascade do |t|
    t.string "cpf_cnpj"
    t.string "nome"
    t.string "endereco"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "veiculos", force: :cascade do |t|
    t.string "placa"
    t.string "renavam"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "proprietario_id", null: false
    t.index ["proprietario_id"], name: "index_veiculos_on_proprietario_id"
  end

  add_foreign_key "veiculos", "proprietarios"
end
