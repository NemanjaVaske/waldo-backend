class Api::V1::ScoresController < ApplicationController
    def show
        @image = Image.find(params[:image_id])
        render json: @image.to_json(:include => {:scores => {:only => [:name,:seconds]}})
    end
    def create
        @image = Image.find(params[:image_id])
        @score = @image.scores.build(name: params[:name], seconds: params[:record])
        
        if @score.save
            render json: @image.scores
        else
            render json: @score.errors, status: :unprocessable_entity
        end
    end
end