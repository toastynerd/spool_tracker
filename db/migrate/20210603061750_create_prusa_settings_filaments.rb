class CreatePrusaSettingsFilaments < ActiveRecord::Migration[6.1]
  def change
    create_table :prusa_settings_filaments do |t|
      t.references :user, null: false, foreign_key: true

      t.string :bed_temperature
      t.string :bridge_fan_speed
      t.string :compatible_printers
      t.string :compatible_printers_condition
      t.string :compatible_prints
      t.string :compatible_prints_condition
      t.string :cooling
      t.string :disable_fan_first_layers
      t.string :end_filament_gcode
      t.string :extrusion_multiplier
      t.string :fan_always_on
      t.string :fan_below_layer_time
      t.string :filament_colour
      t.string :filament_cooling_final_speed
      t.string :filament_cooling_initial_speed
      t.string :filament_cooling_moves
      t.string :filament_cost
      t.string :filament_density
      t.string :filament_deretract_speed
      t.string :filament_diameter
      t.string :filament_load_time
      t.string :filament_loading_speed
      t.string :filament_loading_speed_start
      t.string :filament_max_volumetric_speed
      t.string :filament_minimal_purge_on_wipe_tower
      t.string :filament_notes
      t.string :filament_ramming_parameters
      t.string :filament_retract_before_travel
      t.string :filament_retract_before_wipe
      t.string :filament_retract_layer_change
      t.string :filament_retract_length
      t.string :filament_retract_lift
      t.string :filament_retract_lift_above
      t.string :filament_retract_lift_below
      t.string :filament_retract_restart_extra
      t.string :filament_retract_speed
      t.string :filament_settings_id
      t.string :filament_soluble
      t.string :filament_spool_weight
      t.string :filament_toolchange_delay
      t.string :filament_type
      t.string :filament_unload_time
      t.string :filament_unloading_speed
      t.string :filament_unloading_speed_start
      t.string :filament_vendor
      t.string :filament_wipe
      t.string :first_layer_bed_temperature
      t.string :first_layer_temperature
      t.string :full_fan_speed_layer
      t.string :inherits
      t.string :max_fan_speed
      t.string :min_fan_speed
      t.string :min_print_speed
      t.string :slowdown_below_layer_time
      t.string :start_filament_gcode
      t.string :temperature

      t.timestamps
    end
  end
end
