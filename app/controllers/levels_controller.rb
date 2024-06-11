class LevelsController < ApplicationController
  def show
    @level = Level.find(params[:id])
    @user = current_user
    @party = Party.all
    @counter = 0
    @reponse = ["reponse1", "reponse2", "reponse3", "reponse4", "reponse5"]
    @user_reponse = 0
  end
end
