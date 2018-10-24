class PokemonController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer_id = current_trainer.id
		pokemon.save()
		redirect_to '/'
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health = pokemon.health - 10
		pokemon.save()
		redirect_to pokemon.trainer
	end

	def heal
		pokemon = Pokemon.find(params[:id])
		if pokemon.health == 100
			flash[:error] = "Your pokemon is at full health"
		else
			pokemon.health = pokemon.health + 10
			pokemon.save()
		
		end
		redirect_to pokemon.trainer
	end

	def new
		
	end

	def create
		pokemon = Pokemon.new(poke_params)
		pokemon.health = 100
		pokemon.level = 1
		pokemon.trainer_id = current_trainer.id
		if pokemon.save
			redirect_to pokemon.trainer
		else
			flash[:error] = pokemon.errors.full_messages.to_sentence
			redirect_to new_path(current_trainer)
		end
	end

	private

	def poke_params
		params.require(:pokemon).permit(:name, :ndex)
	end
end
