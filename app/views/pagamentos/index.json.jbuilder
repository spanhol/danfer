json.array!(@pagamentos) do |pagamento|
  json.extract! pagamento, :id, :data, :dias, :id_estadia
  json.url pagamento_url(pagamento, format: :json)
end
