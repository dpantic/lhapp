json.array!(@aircraft_documents) do |aircraft_document|
  json.extract! aircraft_document, :operator, :ac_type, :document, :revision, :rev_checked
  json.url aircraft_document_url(aircraft_document, format: :json)
end