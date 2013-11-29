json.array!(@ipc_seats) do |ipc_seat|
  json.extract! ipc_seat, :manufacturer, :modell_series, :description, :add_infos, :part_number, :add_material_info, :cmm
  json.url ipc_seat_url(ipc_seat, format: :json)
end