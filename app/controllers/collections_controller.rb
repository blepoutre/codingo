class CollectionsController < ApplicationController
  def show
    @characters = Character.find(params[:id])
    @collections = Collection.new
  end

  def index
    @collections = Collection.all
    @characters = Character.all
  end

  def new
    @characters = Character.find(params[:boat_id])
    @collections = Collection.new
  end
end
