class CharactersController < ApplicationController
  def index
    @characters_skins = Character.all
    current_user
    @characters_id = 0
  end

  def show
    @character = Character.find(params[:id])
  end

  def buying
    @character = Character.find(params[:id])
    p @character
    current_user.balance += 100
    current_user.save
  end
end
