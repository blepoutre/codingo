class CollectionsController < ApplicationController
  def show
    @characters = current_user.collections
  end

  def index
    @collections = current_user.characters
  end

  def new
    @characters_skins = Character.all
    @collection = Collection.new
  end

  def create
    @character = Character.find(params[:collection]["character_id"])
    @user = current_user
    @collection = Collection.create(
      character_id: @character.id,
      user_id: @user.id
    )
    @user.balance -= @character.price
    @user.save

    redirect_to parties_path
  end
end
