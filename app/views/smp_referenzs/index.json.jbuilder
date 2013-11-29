json.array!(@smp_referenzs) do |smp_referenz|
  json.extract! smp_referenz, :spm_ref, :bauteil
  json.url smp_referenz_url(smp_referenz, format: :json)
end