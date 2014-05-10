json.array!(@program_categories) do |program_category|
  json.extract! program_category, :id, :program_id, :category_id
  json.url program_category_url(program_category, format: :json)
end
