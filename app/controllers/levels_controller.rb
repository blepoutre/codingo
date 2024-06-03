class LevelsController < ApplicationController

  # def new
  #   @level = Level.new
  # end

  # def create
  #   @level = Level.new(params_level)
  #   @world = World.find(params[:world_id])
  #   @level.world = @world
  #   if @level.save
  #     redirect_to level_path(@level)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  def show

  end

  private

  def params_level
    params.require(:level).permit(:instruction, :validation, :reward)
  end
end
