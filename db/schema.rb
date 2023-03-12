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

ActiveRecord::Schema[7.0].define(version: 2023_03_12_074344) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "whatsapp"
    t.string "contacto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cotizacion_dlls", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.bigint "user_id", null: false
    t.bigint "job_id", null: false
    t.bigint "factura_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_cotizacion_dlls_on_cliente_id"
    t.index ["factura_id"], name: "index_cotizacion_dlls_on_factura_id"
    t.index ["job_id"], name: "index_cotizacion_dlls_on_job_id"
    t.index ["user_id"], name: "index_cotizacion_dlls_on_user_id"
  end

  create_table "cotizacion_mns", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.bigint "user_id", null: false
    t.bigint "job_id", null: false
    t.bigint "factura_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_cotizacion_mns_on_cliente_id"
    t.index ["factura_id"], name: "index_cotizacion_mns_on_factura_id"
    t.index ["job_id"], name: "index_cotizacion_mns_on_job_id"
    t.index ["user_id"], name: "index_cotizacion_mns_on_user_id"
  end

  create_table "facturas", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_facturas_on_cliente_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "notas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "whatsapp"
    t.string "contacto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "whatsapp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cotizacion_dlls", "clientes"
  add_foreign_key "cotizacion_dlls", "facturas"
  add_foreign_key "cotizacion_dlls", "jobs"
  add_foreign_key "cotizacion_dlls", "users"
  add_foreign_key "cotizacion_mns", "clientes"
  add_foreign_key "cotizacion_mns", "facturas"
  add_foreign_key "cotizacion_mns", "jobs"
  add_foreign_key "cotizacion_mns", "users"
  add_foreign_key "facturas", "clientes"
  add_foreign_key "jobs", "users"
end
