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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120803194100) do

  create_table "actividads", :force => true do |t|
    t.string   "nombre"
    t.string   "responsable"
    t.integer  "avance"
    t.datetime "fecha_inicio"
    t.datetime "fecha_termino"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "areas", :force => true do |t|
    t.string   "nombre"
    t.integer  "compromiso_reduccion"
    t.integer  "compromiso_iniciativas"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "avance_iniciativas", :force => true do |t|
    t.integer  "iniciativa_id"
    t.datetime "fecha"
    t.integer  "valor"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "avance_iniciativas", ["iniciativa_id"], :name => "index_avance_iniciativas_on_iniciativa_id"

  create_table "contratos", :force => true do |t|
    t.integer  "empresa_id"
    t.integer  "area_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "contratos", ["empresa_id", "area_id"], :name => "index_contratos_on_empresa_id_and_area_id"

  create_table "dotacions", :force => true do |t|
    t.integer  "contrato_id"
    t.datetime "fecha"
    t.integer  "empleados"
    t.integer  "recategorizacion"
    t.integer  "gestion_dotacional"
    t.integer  "nuevos_ingresos_egresos"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "recategorizacion_fte",        :default => 0, :null => false
    t.integer  "gestion_dotacional_fte",      :default => 0, :null => false
    t.integer  "nuevos_ingresos_egresos_fte", :default => 0, :null => false
    t.integer  "fte"
  end

  add_index "dotacions", ["contrato_id"], :name => "index_dotacions_on_contrato_id"

  create_table "empresas", :force => true do |t|
    t.string   "nombre"
    t.string   "responsable"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "iniciativas", :force => true do |t|
    t.integer  "contrato_id"
    t.datetime "fecha"
    t.integer  "compromiso"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "iniciativas", ["contrato_id"], :name => "index_iniciativas_on_contrato_id"

  create_table "plan_contingencias", :force => true do |t|
    t.integer  "riesgo_id"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "relacion_sup_area_areas", :force => true do |t|
    t.integer  "area_id"
    t.integer  "sup_area_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relacion_sup_area_areas", ["area_id"], :name => "index_relacion_sup_area_areas_on_area_id"
  add_index "relacion_sup_area_areas", ["sup_area_id"], :name => "index_relacion_sup_area_areas_on_sup_area_id"

  create_table "reportes", :force => true do |t|
    t.string   "file_name"
    t.boolean  "tipo"
    t.datetime "fecha"
    t.datetime "fecha_actualizacion"
    t.string   "url"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "reportes", ["file_name"], :name => "index_reportes_on_file_name"

  create_table "riesgos", :force => true do |t|
    t.string   "nemo"
    t.integer  "probabilidad"
    t.integer  "impacto"
    t.text     "descripcion"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "token"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["user_id"], :name => "index_sessions_on_user_id"

  create_table "sup_areas", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "authentication_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
