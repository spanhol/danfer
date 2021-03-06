class Quarto < ActiveRecord::Base

	def getsitaucao
		#se tem estadia com data inicial <= hj e data final >= hj
		estadias = ActiveRecord::Base.connection.execute("SELECT * 
			FROM estadia 
			where 
			data_inicial <= DATETIME('now') and data_final >= DATETIME('now')
			and numero_quarto = " +  self.numero_quarto.to_s)
		
		#ver se tem reserva
		# se estadias = nil / size == 0
		if estadias.present?		
			situacao = 'Ocupado'
		else
			reservas = ActiveRecord::Base.connection.execute("SELECT * 
			FROM reserva
			where 
			data_inicial <= DATETIME('now') and data_final >= DATETIME('now')
			and numero_quarto = " +  self.numero_quarto.to_s)
			if reservas.present?
				situacao = 'Reservado'
			else
				situacao = 'Livre'
			end
		end		
	end

	def getreserva
		reservas = ActiveRecord::Base.connection.execute("SELECT * 
		FROM reserva
		where 
		data_inicial <= DATETIME('now') and data_final >= DATETIME('now')
		and numero_quarto = " +  self.numero_quarto.to_s)
		
		if reservas.present?
			reservas.first["id"].to_s
		else
			"0"
		end
	end
end
