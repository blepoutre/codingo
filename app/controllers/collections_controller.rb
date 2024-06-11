class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
    @parties = Party.all
  end

  def new
  end
end
