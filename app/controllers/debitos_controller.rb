class DebitosController < ApplicationController
	
	def calcular
		if params[:id_estadia].present?
			@idestadia = params[:id_estadia]
		else
			@idestadia = 0
		end
	end

	def fechar
	end

	def renovar
	end
end
