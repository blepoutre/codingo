class LevelsController < ApplicationController
  def show
    @level = Level.find(params[:id])
    @user = current_user
    @party_finder = @level.user_levelings
    @party = @party_finder[0].party_id
    @counter = 0
    @reponse = ["reponse1", "reponse2", "reponse3", "reponse4", "reponse5"]
    @stars = 0
    @character = Character.find(current_user.collections.first.character_id)
  end
end
