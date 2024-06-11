class PartiesController < ApplicationController
  def show
    @party = Party.find(params[:id])
    @user_levels = current_user.user_levelings
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.new
    @user = current_user
    @party.user = @user
    @levels = Level.all
    @party.save
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
    p current_level
    current_level.update(done: true)
    current_user.balance += @level.reward
    current_user.save
    @party = current_level.party
    respond_to do |format|
      # format.html { redirect_to movies_path }
      format.text { render partial: "levels/stars", locals: {stars: @stars, party: @party, level: @level}, formats: [:html] }
    end
  end
end
