class PartiesController < ApplicationController
  def show
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.new
    @user = current_user
    @party.user = @user
    @level = Level.find_by(number: 1)
    @party.save

    @user_party = UserLeveling.new
    @user_party.level_id = @level.id
    @user_party.party_id = @party.id
    @user_party.done = true
    @user_party.reward = 0

    if @user_party.save
      redirect_to party_path(@party)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
