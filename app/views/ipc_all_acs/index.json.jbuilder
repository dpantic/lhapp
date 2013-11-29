json.array!(@ipc_all_acs) do |ipc_all_ac|
  json.extract! ipc_all_ac, :system, :description, :add_infos, :part_number, :mat_nr, :add_material_info, :info
  json.url ipc_all_ac_url(ipc_all_ac, format: :json)
end