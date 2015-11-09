json.array!(@categoria_quarto) do |categoria_quarto|
  json.extract! categoria_quarto, :id, :descricao, :valor
  json.url categoria_quarto_url(categoria_quarto, format: :json)
end
