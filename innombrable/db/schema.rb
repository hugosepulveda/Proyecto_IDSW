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

ActiveRecord::Schema.define(version: 2018_06_17_190742) do

  create_table "bodegas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "horario"
    t.integer "numero"
    t.string "calle"
    t.string "comuna"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bodegueros", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "bodega_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes_internos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "bodega_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cotizaciones", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "proveedor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encargados_compras", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "solicitude_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materiales", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.integer "cantidad"
    t.boolean "disponible"
    t.integer "bodega_id"
    t.string "tipo"
    t.string "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materiales_bodegas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "material_id"
    t.integer "bodega_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordenes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "encargado_id"
    t.integer "proveedor_id"
    t.string "forma_pago"
    t.string "direccion_entrega"
    t.datetime "fecha_entrega"
    t.integer "costo"
    t.boolean "archivado"
    t.boolean "bloqueado"
    t.string "comentarios"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proveedores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "telefono"
    t.string "email"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "retiros_bodegas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "fecha"
    t.integer "cantidad"
    t.integer "solicitud_id"
    t.integer "bodeguero_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicitudes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "material"
    t.integer "cantidad"
    t.integer "prioridad"
    t.integer "cliente_id"
    t.string "estado"
    t.integer "encargado_id"
    t.integer "bodeguero_id"
    t.boolean "aprobado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "tipo"
    t.integer "rut"
    t.string "email"
    t.string "contrasena"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
