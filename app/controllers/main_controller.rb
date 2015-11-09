class MainController < ApplicationController

	def index
		@quarto = Quarto.all
		@categoria_quarto = CategoriaQuarto.all
	end
end
