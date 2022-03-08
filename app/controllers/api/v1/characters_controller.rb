class Api::V1::CharactersController < ApplicationController
    before_action :set_character, only: [:show, :update, :destroy]
    def index
        @characters = Character.all
    
        render json: @characters
    end
    
    def create
        @character = Character.new(character_params)
    
        if @character.save
          render json: @character, status: :created, location: @character
        else
          render json: @character.errors, status: :unprocessable_entity
        end
    end
    private
    def set_character
        @character = Character.find(params[:id])
      end
    def character_params
        params.require(:character).permit(:name, :x_pos, :y_pos)
      end
end