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

  def formatted_character_image_name
    first_character_nickname = collections.first&.character&.nickname
    return nil unless first_character_nickname

    first_word = first_character_nickname.split.first.downcase
    "#{first_word.tr(' ', '_')}.png"
  end
end
