module PagamentosHelper
	def calcular_atual (estadia)
		if (estadia != 0)
			@pagamentos = Pagamento.where(["id_estadia = ?", estadia])
			dias_pagos = 0
			@pagamentos.each do |pagamento|
				dias_pagos = dias_pagos + pagamento.dias
			end

			@estadia = Estadia.where(["id = ?", estadia])
			if @estadia.present?
				return '0'
			end
			@categoria = CategoriaQuarto.find(@estadia.categoria_quarto_id)
			dias_devidos = (Date.today - @estadia.first.data_inicial).to_i
			saldo = (dias_devidos - dias_pagos) *  @categoria.valor
		else
			'0'
		end
	end

	def calcular_total (estadia)
		if estadia != 0
			@pagamentos = Pagamento.where(["id_estadia = ?", estadia])
		
			dias_pagos = 0
			@pagamentos.each do |pagamento|
				dias_pagos = dias_pagos + pagamento.dias
			end
			@estadia = Estadia.where(["id = ?", estadia])
			if @estadia.present?
				@categoria = CategoriaQuarto.find(@estadia.categoria_quarto_id)
				dias_devidos = (@estadia.first.data_final - @estadia.first.data_inicial).to_i
				saldo = (dias_devidos - dias_pagos) * @categoria.valor
			else
				'0'
			end
		else
			'0'
		end
	end

	def calcular (estadia)
		if (estadia != 0)
			@pagamentos = Pagamento.where(["id_estadia = ?", estadia])
			dias_pagos = 0
			@pagamentos.each do |pagamento|
				dias_pagos = dias_pagos + pagamento.dias
			end

			@estadia = Estadia.where(["id = ?", estadia])
			if @estadia.present?
				@categoria = CategoriaQuarto.find(@estadia.first.categoria_quarto_id)
				@dias_devidos = (Date.today - @estadia.first.data_inicial).to_i
				@total_dias_devidos = (@estadia.first.data_final - @estadia.first.data_inicial).to_i
				@saldo_atual = (@dias_devidos - dias_pagos) *  @categoria.valor
				@saldo_total = (@total_dias_devidos - dias_pagos) *  @categoria.valor
			end
		end
	end



end

