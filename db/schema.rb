# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110609124613) do

  create_table "agendas", :force => true do |t|
    t.datetime "startdate"
    t.datetime "enddate"
    t.integer  "estado_cita_id"
    t.integer  "profesional_id"
    t.integer  "especialidad_id"
    t.integer  "procedimiento_id"
    t.integer  "finalidad_id"
    t.integer  "paciente_id"
    t.integer  "entidad_id"
    t.integer  "contrato_id"
    t.integer  "consultorio_id"
    t.integer  "categoria_id"
    t.integer  "estrato_id"
    t.integer  "servicio_id"
    t.boolean  "status",           :default => false
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contratos", :force => true do |t|
    t.integer  "entidad_id"
    t.string   "name"
    t.string   "numero"
    t.date     "date"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "monto_original",  :limit => 10, :precision => 10, :scale => 0
    t.integer  "monto_adicional", :limit => 10, :precision => 10, :scale => 0
    t.integer  "valor_facturado", :limit => 10, :precision => 10, :scale => 0
    t.integer  "file"
    t.integer  "poliza_file"
    t.boolean  "status",                                                       :default => true
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "db_tables", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "kind"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entidads", :force => true do |t|
    t.string   "name",                       :null => false
    t.string   "codigo_habilitacion"
    t.string   "nit_numero"
    t.string   "nit_digito_verificacion"
    t.integer  "tipo_id",                    :null => false
    t.string   "direccion"
    t.string   "telefono_fijo"
    t.string   "telefono_movil"
    t.string   "persona_contacto"
    t.string   "email"
    t.string   "website"
    t.string   "website_autorizaciones"
    t.string   "website_radicacion_rips"
    t.string   "email_autorizaciones"
    t.string   "callcenter_autorizaciones"
    t.string   "callcenter_autorizaciones2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "holidays", :force => true do |t|
    t.datetime "start_date", :null => false
    t.datetime "end_date",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_items", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "controller"
    t.string   "action"
    t.string   "params"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacientes", :force => true do |t|
    t.string   "name1"
    t.string   "name2"
    t.string   "last_name1"
    t.string   "last_name2"
    t.string   "full_name"
    t.integer  "tipo_identificacion"
    t.string   "numero_identificacion"
    t.integer  "genero"
    t.integer  "grupo_sanguineo"
    t.integer  "estado_civil"
    t.integer  "entidad_id"
    t.integer  "contrato_id"
    t.integer  "estrato"
    t.integer  "tipo_usuario"
    t.integer  "grupo_atencion"
    t.integer  "ocupacion"
    t.integer  "departamento"
    t.integer  "municipio"
    t.integer  "comuna"
    t.integer  "barrio"
    t.string   "direccion"
    t.string   "telefono_fijo"
    t.string   "telefono_celular"
    t.string   "email"
    t.string   "nombre_padre"
    t.string   "nombre_madre"
    t.string   "acudiente"
    t.integer  "photo_id"
    t.integer  "huella_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "procedimientos", :force => true do |t|
    t.string   "name",                                                                        :null => false
    t.string   "codigo_cups"
    t.string   "codigo_soat"
    t.integer  "genero_id"
    t.integer  "edad_inicial", :limit => 10, :precision => 10, :scale => 0
    t.integer  "edad_final",   :limit => 10, :precision => 10, :scale => 0
    t.boolean  "status",                                                    :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_contratos", :force => true do |t|
    t.integer  "contrato_id"
    t.string   "name"
    t.integer  "manual_tarifario_id"
    t.integer  "tipo_usuario_id"
    t.integer  "tipo_contrato_id"
    t.integer  "valor_facturado",     :limit => 10, :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "virtual_table_rows", :force => true do |t|
    t.integer  "virtual_tables_id"
    t.string   "field1",            :null => false
    t.string   "field2"
    t.string   "field3"
    t.string   "field4"
    t.string   "field5"
    t.string   "field6"
    t.string   "field7"
    t.string   "field8"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "virtual_tables", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "num_fields", :null => false
    t.string   "field1",     :null => false
    t.string   "field2"
    t.string   "field3"
    t.string   "field4"
    t.string   "field5"
    t.string   "field6"
    t.string   "field7"
    t.string   "field8"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
