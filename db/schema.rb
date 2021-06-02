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

ActiveRecord::Schema.define(version: 2021_06_02_202805) do

  create_table "printers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.string "manufacturer"
    t.string "model"
    t.text "modifications"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_printers_on_user_id"
  end

  create_table "prints", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "settings"
    t.string "file"
    t.boolean "success"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "spool_id"
    t.string "print_name"
    t.text "description"
    t.text "notes"
    t.index ["spool_id"], name: "index_prints_on_spool_id"
    t.index ["user_id"], name: "index_prints_on_user_id"
  end

  create_table "prusa_printer_settings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "bed_custom_model"
    t.string "bed_custom_texture"
    t.string "bed_shape"
    t.string "before_layer_gcode"
    t.string "between_objects_gcode"
    t.string "color_change_gcode"
    t.string "cooling_tube_length"
    t.string "cooling_tube_retraction"
    t.string "default_filament_profile"
    t.string "default_print_profile"
    t.string "deretract_speed"
    t.string "end_gcode"
    t.string "extra_loading_move"
    t.string "extruder_colour"
    t.string "extruder_offset"
    t.string "gcode_flavor"
    t.string "high_current_on_filament_swap"
    t.string "host_type"
    t.string "inherits"
    t.string "layer_gcode"
    t.string "machine_limits_usage"
    t.string "machine_max_acceleration_e"
    t.string "machine_max_acceleration_extruding"
    t.string "machine_max_acceleration_retracting"
    t.string "machine_max_acceleration_x"
    t.string "machine_max_acceleration_y"
    t.string "machine_max_acceleration_z"
    t.string "machine_max_feedrate_e"
    t.string "machine_max_feedrate_x"
    t.string "machine_max_feedrate_y"
    t.string "machine_max_feedrate_z"
    t.string "machine_max_jerk_e"
    t.string "machine_max_jerk_x"
    t.string "machine_max_jerk_y"
    t.string "machine_max_jerk_z"
    t.string "machine_min_extruding_rate"
    t.string "machine_min_travel_rate"
    t.string "max_layer_height"
    t.string "max_print_height"
    t.string "min_layer_height"
    t.string "nozzle_diameter"
    t.string "parking_pos_retraction"
    t.string "pause_print_gcode"
    t.string "print_host"
    t.string "printer_model"
    t.string "printer_notes"
    t.string "printer_settings_id"
    t.string "printer_technology"
    t.string "printer_variant"
    t.string "printer_vendor"
    t.string "printhost_apikey"
    t.string "printhost_cafile"
    t.string "remaining_times"
    t.string "retract_before_travel"
    t.string "retract_before_wipe"
    t.string "retract_layer_change"
    t.string "retract_length"
    t.string "retract_length_toolchange"
    t.string "retract_lift"
    t.string "retract_lift_above"
    t.string "retract_lift_below"
    t.string "retract_restart_extra"
    t.string "retract_restart_extra_toolchange"
    t.string "retract_speed"
    t.string "silent_mode"
    t.string "single_extruder_multi_material"
    t.string "start_gcode"
    t.string "template_custom_gcode"
    t.string "thumbnails"
    t.string "toolchange_gcode"
    t.string "use_firmware_retraction"
    t.string "use_relative_e_distances"
    t.string "use_volumetric_e"
    t.string "variable_layer_height"
    t.string "wipe"
    t.string "z_offset"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_prusa_printer_settings_on_user_id"
  end

  create_table "prusa_settings_printers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "bed_custom_model"
    t.string "bed_custom_texture"
    t.string "bed_shape"
    t.string "before_layer_gcode"
    t.string "between_objects_gcode"
    t.string "color_change_gcode"
    t.string "cooling_tube_length"
    t.string "cooling_tube_retraction"
    t.string "default_filament_profile"
    t.string "default_print_profile"
    t.string "deretract_speed"
    t.string "end_gcode"
    t.string "extra_loading_move"
    t.string "extruder_colour"
    t.string "extruder_offset"
    t.string "gcode_flavor"
    t.string "high_current_on_filament_swap"
    t.string "host_type"
    t.string "inherits"
    t.string "layer_gcode"
    t.string "machine_limits_usage"
    t.string "machine_max_acceleration_e"
    t.string "machine_max_acceleration_extruding"
    t.string "machine_max_acceleration_retracting"
    t.string "machine_max_acceleration_x"
    t.string "machine_max_acceleration_y"
    t.string "machine_max_acceleration_z"
    t.string "machine_max_feedrate_e"
    t.string "machine_max_feedrate_x"
    t.string "machine_max_feedrate_y"
    t.string "machine_max_feedrate_z"
    t.string "machine_max_jerk_e"
    t.string "machine_max_jerk_x"
    t.string "machine_max_jerk_y"
    t.string "machine_max_jerk_z"
    t.string "machine_min_extruding_rate"
    t.string "machine_min_travel_rate"
    t.string "max_layer_height"
    t.string "max_print_height"
    t.string "min_layer_height"
    t.string "nozzle_diameter"
    t.string "parking_pos_retraction"
    t.string "pause_print_gcode"
    t.string "print_host"
    t.string "printer_model"
    t.string "printer_notes"
    t.string "printer_settings_id"
    t.string "printer_technology"
    t.string "printer_variant"
    t.string "printer_vendor"
    t.string "printhost_apikey"
    t.string "printhost_cafile"
    t.string "remaining_times"
    t.string "retract_before_travel"
    t.string "retract_before_wipe"
    t.string "retract_layer_change"
    t.string "retract_length"
    t.string "retract_length_toolchange"
    t.string "retract_lift"
    t.string "retract_lift_above"
    t.string "retract_lift_below"
    t.string "retract_restart_extra"
    t.string "retract_restart_extra_toolchange"
    t.string "retract_speed"
    t.string "silent_mode"
    t.string "single_extruder_multi_material"
    t.string "start_gcode"
    t.string "template_custom_gcode"
    t.string "thumbnails"
    t.string "toolchange_gcode"
    t.string "use_firmware_retraction"
    t.string "use_relative_e_distances"
    t.string "use_volumetric_e"
    t.string "variable_layer_height"
    t.string "wipe"
    t.string "z_offset"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_prusa_settings_printers_on_user_id"
  end

  create_table "spools", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "rfid"
    t.string "material"
    t.string "manufacturer"
    t.date "purchased"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_spools_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "printers", "users"
  add_foreign_key "prints", "spools"
  add_foreign_key "prints", "users"
  add_foreign_key "prusa_printer_settings", "users"
  add_foreign_key "prusa_settings_printers", "users"
  add_foreign_key "spools", "users"
end
