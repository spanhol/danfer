json.array!(@quarto) do |quarto|
  json.extract! quarto, :id, :numero_quarto, :andar, :categoria_quarto_id
  json.url quarto_url(quarto, format: :json)
end
