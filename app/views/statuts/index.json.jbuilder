json.array!(@statuts) do |statut|
  json.extract! statut, :id, :name, :content
  json.url statut_url(statut, format: :json)
end
