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

ActiveRecord::Schema.define(version: 20171009163208) do

  create_table "careers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "foto_c_file_name"
    t.string   "foto_c_content_type"
    t.integer  "foto_c_file_size"
    t.datetime "foto_c_updated_at"
  end

  create_table "courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "curriculum_courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "curriculum_id"
    t.integer  "course_id"
    t.string   "instituicao"
    t.date     "data_inicial"
    t.date     "data_final"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["course_id"], name: "index_curriculum_courses_on_course_id", using: :btree
    t.index ["curriculum_id"], name: "index_curriculum_courses_on_curriculum_id", using: :btree
  end

  create_table "curriculum_languages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "curriculum_id"
    t.integer  "language_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["curriculum_id"], name: "index_curriculum_languages_on_curriculum_id", using: :btree
    t.index ["language_id"], name: "index_curriculum_languages_on_language_id", using: :btree
  end

  create_table "curriculums", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "cidade"
    t.string   "endereco"
    t.string   "uf"
    t.string   "cpf"
    t.string   "telefone_resid"
    t.string   "telefone_com"
    t.integer  "idade"
    t.date     "dt_nasc"
    t.integer  "status_curriculo",       default: 0
    t.integer  "user_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "foto_curr_file_name"
    t.string   "foto_curr_content_type"
    t.integer  "foto_curr_file_size"
    t.datetime "foto_curr_updated_at"
    t.index ["user_id"], name: "index_curriculums_on_user_id", using: :btree
  end

  create_table "experiences", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "empresa"
    t.date     "data_inicial"
    t.date     "data_final"
    t.text     "descricao",     limit: 65535
    t.integer  "career_id"
    t.integer  "curriculum_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["career_id"], name: "index_experiences_on_career_id", using: :btree
    t.index ["curriculum_id"], name: "index_experiences_on_curriculum_id", using: :btree
  end

  create_table "jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float    "valor",          limit: 24
    t.date     "data_inicial"
    t.date     "data_final"
    t.string   "solicitacao"
    t.text     "descricao",      limit: 65535
    t.integer  "status"
    t.integer  "solicitante_id"
    t.integer  "user_id"
    t.integer  "career_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["career_id"], name: "index_jobs_on_career_id", using: :btree
    t.index ["user_id"], name: "index_jobs_on_user_id", using: :btree
  end

  create_table "languages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "msg"
    t.date     "data"
    t.time     "hora"
    t.integer  "status"
    t.integer  "solicitante_id"
    t.integer  "user_id"
    t.integer  "job_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["job_id"], name: "index_messages_on_job_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "phones", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "telefone"
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "perfil"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "nome"
    t.string   "cpf"
    t.integer  "idade"
    t.date     "dt_nasc"
    t.string   "cidade"
    t.string   "uf"
    t.string   "endereco"
    t.integer  "pontuacao",              default: 0
    t.integer  "qtd_prestados",          default: 0
    t.integer  "qtd_solicitados",        default: 0
    t.integer  "ativa_perfil_trab",      default: 0
    t.string   "encrypted_password",     default: "", null: false
    t.integer  "profile_id"
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["profile_id"], name: "index_users_on_profile_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "curriculum_courses", "courses"
  add_foreign_key "curriculum_courses", "curriculums"
  add_foreign_key "curriculum_languages", "curriculums"
  add_foreign_key "curriculum_languages", "languages"
  add_foreign_key "experiences", "careers"
  add_foreign_key "experiences", "curriculums"
  add_foreign_key "messages", "jobs"
  add_foreign_key "messages", "users"
  add_foreign_key "users", "profiles"
end
