class PokemonsController < ApplicationController
	def capture
  	    @pokemon = Pokemon.find(params[:id])
        @pokemon.trainer = current_trainer
        @pokemon.save
        redirect_to '/'
    end

    def damage
        @pokemon = Pokemon.where(id: params[:id]).first
        @pokemon.health -= 10
        if @pokemon.health <= 0
            flash[:destroy] = "Pokemon Destroyed"
            @pokemon.destroy
        else
            @pokemon.save
        end
        redirect_to trainer_path(id: @pokemon.trainer)
    end

    def new
        @pokemon = Pokemon.new
    end

    def create
        @pokemon = Pokemon.new(params.require(:pokemon).permit(:name))
        @pokemon.level = 1
        @pokemon.health = 100
        @pokemon.trainer = current_trainer
        if @pokemon.save
            redirect_to trainer_path(id: @pokemon.trainer)
        else
            redirect_to new_pokemon_path
            flash[:error] = @pokemon.errors.full_messages.to_sentence
        end

    end

end

