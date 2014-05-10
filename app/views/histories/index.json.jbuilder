json.array!(@histories) do |history|
  json.extract! history, :id, :name, :description
  json.url history_url(history, format: :json)
end
