json.array!(@cmm_revisions) do |cmm_revision|
  json.extract! cmm_revision, :ac_type, :type, :manufacturer, :part_number, :model, :cmm, :revision_date, :issue, :rev_checked, :not_in_use
  json.url cmm_revision_url(cmm_revision, format: :json)
end