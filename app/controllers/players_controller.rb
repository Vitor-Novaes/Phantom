class PlayersController < ApplicationController

	before_action :set_player , only: [ :edit , :update ]

	def pagInicial
		@fullplayer = Player.all.order :nome 
		@treinos = Treinamento.all
	end	
	
	def new
		@player = Player.new 
		@treinos = Treinamento.all
	end

	def create 
		@player = Player.new player_params
		
		if@player.save
			flash[:notice] = "Player cadastrado com sucesso"
			redirect_to root_url
		else
			renderiza :new
		end
	end

	def destroy
		id = params[:id]
		Player.destroy id
		redirect_to root_url
	end

	def busca
		@busca_1 = params[:nome]
		@busca_p = Player.where "nome like ?" , "%#{@busca_1}%"
	end

	def edit
		renderiza :edit
	end

	def update
		valores = player_params

		if @player.update valores
			flash[:notice] = "atualizado com sucesso"
			redirect_to root_url
		else
			renderiza :edit
		end	
	end

	private
	def renderiza(view)
		@treinos = Treinamento.all
		render view	
	end

	def set_player
		id = params[:id]
		@player = Player.find(id)
	end

	def player_params
		params.require(:player).permit :nome,:nick,:posicao,:ranked,:treinamento_id,:email_id
	end

end