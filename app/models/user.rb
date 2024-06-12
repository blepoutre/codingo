class User < ApplicationRecord
  has_many :collections,  dependent: :destroy
  has_many :parties, dependent: :destroy
  has_many :user_levelings, through: :parties, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def current_level
    user_levelings.where(done: false).joins(:level).order(:number).first
  end
end
