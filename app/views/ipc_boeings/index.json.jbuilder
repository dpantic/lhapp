json.array!(@ipc_boeings) do |ipc_boeing|
  json.extract! ipc_boeing, :ac_type, :ata, :system, :description, :location, :add_infos, :part_number, :add_material_info, :ipc
  json.url ipc_boeing_url(ipc_boeing, format: :json)
end