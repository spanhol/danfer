json.array!(@estadia) do |estadia|
  json.extract! estadia, :id, :cpf, :numero_quarto, :categoria_quarto_id, :data_inicial, :data_final, :qtde_pessoas, :valor_diaria
  json.url estadia_url(estadia, format: :json)
end
