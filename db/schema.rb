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

ActiveRecord::Schema.define(version: 20131230202510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "aereos", force: true do |t|
    t.string   "voo_numero"
    t.string   "cia"
    t.string   "ida"
    t.string   "volta"
    t.string   "detalhes"
    t.string   "tarifa"
    t.string   "taxa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogs", force: true do |t|
    t.string   "titulo"
    t.text     "conteudo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "capas", force: true do |t|
    t.string   "image_id"
    t.string   "w"
    t.string   "h"
    t.string   "x"
    t.string   "y"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "destinos_id"
  end

  add_index "capas", ["destinos_id"], name: "index_capas_on_destinos_id", using: :btree

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "covers", force: true do |t|
    t.string   "img"
    t.string   "x"
    t.string   "y"
    t.string   "h"
    t.string   "w"
    t.integer  "destino_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "covers", ["destino_id"], name: "index_covers_on_destino_id", using: :btree

  create_table "destino_favoritos", force: true do |t|
    t.integer  "user_id"
    t.integer  "destino_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "destino_favoritos", ["destino_id"], name: "index_destino_favoritos_on_destino_id", using: :btree
  add_index "destino_favoritos", ["user_id"], name: "index_destino_favoritos_on_user_id", using: :btree

  create_table "destinos", force: true do |t|
    t.string   "title"
    t.string   "desc"
    t.string   "dias"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cidade"
    t.string   "sinfo_title"
    t.string   "sinfo_subtitle"
    t.string   "sinfo_tipo"
    t.string   "sinfo_categoria"
    t.string   "sinfo_price"
    t.text     "sinfo_desc"
    t.string   "tipo"
    t.string   "fotoid"
    t.text     "full_text"
    t.string   "slug"
    t.string   "foto_capa"
    t.integer  "capa_id"
  end

  add_index "destinos", ["capa_id"], name: "index_destinos_on_capa_id", using: :btree
  add_index "destinos", ["slug"], name: "index_destinos_on_slug", unique: true, using: :btree

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "galeria", force: true do |t|
    t.string   "nome"
    t.integer  "destino_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "galeria", ["destino_id"], name: "index_galeria_on_destino_id", using: :btree

  create_table "hotels", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto"
    t.string   "entrada"
    t.string   "saida"
    t.string   "tipo"
    t.string   "regime_alimentacao"
    t.string   "cortesia"
    t.string   "tarifa"
    t.string   "taxa"
  end

  create_table "pacotes", force: true do |t|
    t.string   "titulo"
    t.string   "valor"
    t.integer  "destino_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "dias"
    t.string   "noites"
    t.string   "cidade_origem"
    t.string   "cidade_destino"
    t.boolean  "aereo"
    t.string   "hotel"
    t.boolean  "seguro_viagem"
    t.boolean  "cafe"
    t.string   "aeroporto_ori"
    t.string   "aeroporto_dest"
    t.text     "desc"
  end

  add_index "pacotes", ["destino_id"], name: "index_pacotes_on_destino_id", using: :btree

  create_table "pacotes_selecionados", force: true do |t|
    t.integer  "destino_id"
    t.integer  "pacote_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pacotes_selecionados", ["destino_id"], name: "index_pacotes_selecionados_on_destino_id", using: :btree
  add_index "pacotes_selecionados", ["pacote_id"], name: "index_pacotes_selecionados_on_pacote_id", using: :btree

  create_table "uploads", force: true do |t|
    t.string   "capa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "foto"
    t.string   "local"
    t.string   "sexo"
    t.string   "datanasc"
  end

end
