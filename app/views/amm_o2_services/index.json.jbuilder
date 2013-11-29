json.array!(@amm_o2_services) do |amm_o2_service|
  json.extract! amm_o2_service, :ac_type, :operator, :system, :job, :amm_referenz
  json.url amm_o2_service_url(amm_o2_service, format: :json)
end