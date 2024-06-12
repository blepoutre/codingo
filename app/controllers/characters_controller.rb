class CharactersController < ApplicationController
  def index
    @characters = Character.all
    current_user
  end
  def show

  end

end
