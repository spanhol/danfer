json.array!(@hospede) do |hospede|
  json.extract! hospede, :id, :cpf, :nome, :placa, :nascimento, :rg
  json.url hospede_url(hospede, format: :json)
end
