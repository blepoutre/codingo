class PartiesController < ApplicationController
  def show
    @party = Party.find(current_user.parties)
    @user_levels = current_user.user_levelings
    @character = Character.find(current_user.collections.first.character_id)
  end

  def new
    @party = Party.new
    @character = Character.find(params[:character_id])
  end

  def index
    @characters = current_user.characters
    @character = Character.find(@characters.first.id)
    @last_finished = 0
    @user_levels = current_user.user_levelings
    @user_levels.joins(:level).order(:number).each do |user_level|
      if user_level.done || user_level.id == current_user.current_level.id
        @last_finished = user_level
      end
    end
    @current_level = Level.find(@last_finished.level_id)
  end

  def create
    @character = Character.find(params[:character_id])
    @party = Party.new
    @user = current_user
    @party.user = @user
    @levels = Level.all
    @party.save

    @collection = Collection.create(
      character_id: @character.id,
      user_id: @user.id
    )

    @levels.each do |level|
      @user_level = UserLeveling.create(
        level: level,
        party: @party,
        done: false,
        reward: 0
      )
    end
    redirect_to party_path(@party)
  end

  def finish_level
    @stars = params["tries"]
    @user_levels = current_user.user_levelings
    @level = Level.find(params[:id])
    current_level = @user_levels.where(level: @level).first
    current_level.update(done: true)
    current_user.balance += @level.reward
    current_user.save
    @party = current_level.party
    respond_to do |format|
      format.text { render partial: "levels/stars", locals: {stars: @stars, party: @party, level: @level}, formats: [:html]}
    end
  end
end
