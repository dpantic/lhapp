json.array!(@amms) do |amm|
  json.extract! amm, :ac_type, :mm_referenz, :bauteil, :eff
  json.url amm_url(amm, format: :json)
end