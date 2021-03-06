class CreatePrusaSettingsPrints < ActiveRecord::Migration[6.1]
  def change
    create_table :prusa_settings_prints do |t|
      t.references :user, null: false, foreign_key: true

      t.string :avoid_crossing_perimeters
      t.string :avoid_crossing_perimeters_max_detour
      t.string :bottom_fill_pattern
      t.string :bottom_solid_layers
      t.string :bottom_solid_min_thickness
      t.string :bridge_acceleration
      t.string :bridge_angle
      t.string :bridge_flow_ratio
      t.string :bridge_speed
      t.string :brim_width
      t.string :clip_multipart_objects
      t.string :compatible_printers
      t.string :compatible_printers_condition
      t.string :complete_objects
      t.string :default_acceleration
      t.string :dont_support_bridges
      t.string :draft_shield
      t.string :elefant_foot_compensation
      t.string :ensure_vertical_shell_thickness
      t.string :external_perimeter_extrusion_width
      t.string :external_perimeter_speed
      t.string :external_perimeters_first
      t.string :extra_perimeters
      t.string :extruder_clearance_height
      t.string :extruder_clearance_radius
      t.string :extrusion_width
      t.string :fill_angle
      t.string :fill_density
      t.string :fill_pattern
      t.string :first_layer_acceleration
      t.string :first_layer_extrusion_width
      t.string :first_layer_height
      t.string :first_layer_speed
      t.string :gap_fill_speed
      t.string :gcode_comments
      t.string :gcode_label_objects
      t.string :infill_acceleration
      t.string :infill_anchor
      t.string :infill_anchor_max
      t.string :infill_every_layers
      t.string :infill_extruder
      t.string :infill_extrusion_width
      t.string :infill_first
      t.string :infill_only_where_needed
      t.string :infill_overlap 
      t.string :infill_speed
      t.string :inherits
      t.string :interface_shells
      t.string :ironing
      t.string :ironing_flowrate
      t.string :ironing_spacing
      t.string :ironing_speed
      t.string :ironing_type
      t.string :layer_height
      t.string :max_print_speed
      t.string :max_volumetric_speed
      t.string :min_skirt_length
      t.string :notes
      t.string :only_retract_when_crossing_perimeters
      t.string :ooze_prevention
      t.string :output_filename_format
      t.string :overhangs
      t.string :perimeter_acceleration
      t.string :perimeter_extruder
      t.string :perimeter_extrusion_width
      t.string :perimeter_speed
      t.string :perimeters
      t.string :post_process
      t.string :print_settings_id
      t.string :raft_layers
      t.string :resolution
      t.string :seam_position
      t.string :single_extruder_multi_material_priming
      t.string :skirt_distance
      t.string :skirt_height
      t.string :skirts
      t.string :slice_closing_radius
      t.string :small_perimeter_speed
      t.string :solid_infill_below_area
      t.string :solid_infill_every_layers
      t.string :solid_infill_extruder
      t.string :solid_infill_extrusion_width
      t.string :solid_infill_speed
      t.string :spiral_vase
      t.string :standby_temperature_delta
      t.string :support_material
      t.string :support_material_angle
      t.string :support_material_auto
      t.string :support_material_buildplate_only
      t.string :support_material_contact_distance
      t.string :support_material_enforce_layers
      t.string :support_material_extruder
      t.string :support_material_extrusion_width
      t.string :support_material_interface_contact_loops
      t.string :support_material_interface_extruder
      t.string :support_material_interface_layers
      t.string :support_material_interface_spacing
      t.string :support_material_interface_speed
      t.string :support_material_pattern
      t.string :support_material_spacing
      t.string :support_material_speed
      t.string :support_material_synchronize_layers
      t.string :support_material_threshold
      t.string :support_material_with_sheath
      t.string :support_material_xy_spacing
      t.string :thin_walls
      t.string :threads
      t.string :top_fill_pattern
      t.string :top_infill_extrusion_width
      t.string :top_solid_infill_speed
      t.string :top_solid_layers
      t.string :top_solid_min_thickness
      t.string :travel_speed
      t.string :wipe_tower
      t.string :wipe_tower_bridging
      t.string :wipe_tower_no_sparse_layers
      t.string :wipe_tower_rotation_angle
      t.string :wipe_tower_width
      t.string :wipe_tower_x
      t.string :wipe_tower_y
      t.string :xy_size_compensation

      t.timestamps
    end
  end
end
