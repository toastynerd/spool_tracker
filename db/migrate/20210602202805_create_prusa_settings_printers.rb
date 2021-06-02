class CreatePrusaSettingsPrinters < ActiveRecord::Migration[6.1]
  def change
    create_table :prusa_settings_printers do |t|
      t.references :user, null: false, foreign_key: true

      t.string :bed_custom_model
      t.string :bed_custom_texture
      t.string :bed_shape
      t.string :before_layer_gcode
      t.string :between_objects_gcode
      t.string :color_change_gcode
      t.string :cooling_tube_length
      t.string :cooling_tube_retraction
      t.string :default_filament_profile
      t.string :default_print_profile
      t.string :deretract_speed
      t.string :end_gcode
      t.string :extra_loading_move
      t.string :extruder_colour
      t.string :extruder_offset
      t.string :gcode_flavor
      t.string :high_current_on_filament_swap
      t.string :host_type
      t.string :inherits
      t.string :layer_gcode
      t.string :machine_limits_usage
      t.string :machine_max_acceleration_e
      t.string :machine_max_acceleration_extruding
      t.string :machine_max_acceleration_retracting
      t.string :machine_max_acceleration_x
      t.string :machine_max_acceleration_y
      t.string :machine_max_acceleration_z
      t.string :machine_max_feedrate_e
      t.string :machine_max_feedrate_x
      t.string :machine_max_feedrate_y
      t.string :machine_max_feedrate_z
      t.string :machine_max_jerk_e
      t.string :machine_max_jerk_x
      t.string :machine_max_jerk_y
      t.string :machine_max_jerk_z
      t.string :machine_min_extruding_rate
      t.string :machine_min_travel_rate
      t.string :max_layer_height
      t.string :max_print_height
      t.string :min_layer_height
      t.string :nozzle_diameter
      t.string :parking_pos_retraction
      t.string :pause_print_gcode
      t.string :print_host
      t.string :printer_model
      t.string :printer_notes
      t.string :printer_settings_id
      t.string :printer_technology
      t.string :printer_variant
      t.string :printer_vendor
      t.string :printhost_apikey
      t.string :printhost_cafile
      t.string :remaining_times
      t.string :retract_before_travel
      t.string :retract_before_wipe
      t.string :retract_layer_change
      t.string :retract_length
      t.string :retract_length_toolchange
      t.string :retract_lift
      t.string :retract_lift_above
      t.string :retract_lift_below
      t.string :retract_restart_extra
      t.string :retract_restart_extra_toolchange
      t.string :retract_speed
      t.string :silent_mode
      t.string :single_extruder_multi_material
      t.string :start_gcode
      t.string :template_custom_gcode
      t.string :thumbnails
      t.string :toolchange_gcode
      t.string :use_firmware_retraction
      t.string :use_relative_e_distances
      t.string :use_volumetric_e
      t.string :variable_layer_height
      t.string :wipe
      t.string :z_offset

      t.timestamps
    end
  end
end
