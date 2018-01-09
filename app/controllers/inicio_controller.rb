class InicioController < ApplicationController

	def PagInicial
		@fullplayer = Player.all.order :nome 
	end	
	
	def new
		valores = params.require(:player).permit :nome,:nick,:posicao,:ranked,:horario
		@player = Player.new valores
	end
end
