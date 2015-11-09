json.array!(@reserva) do |reserva|
  json.extract! reserva, :id, :data_inicial, :cpf, :numero_quarto, :data_final
  json.url reserva_url(reserva, format: :json)
end
