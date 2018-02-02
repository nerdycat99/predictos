class User < ApplicationRecord
  has_many :games
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :create_games!


  def create_games!
    create_game('Wales', 'Scotland', 'one')
    create_game('France', 'Ireland', 'one')
    create_game('Italy', 'England', 'one')
    create_game('Ireland', 'Italy', 'two')
    create_game('England', 'Wales', 'two')
    create_game('Scotland', 'France', 'two')
    create_game('France', 'Italy', 'three')
    create_game('Ireland', 'Wales', 'three')
    create_game('Scotland', 'England', 'three')
    create_game('Ireland', 'Scotland', 'four')
    create_game('France', 'England', 'four')
    create_game('Wales', 'Italy', 'four')
    create_game('Italy', 'Scotland,', 'five')
    create_game('England', 'Ireland', 'five')
    create_game('Wales', 'France', 'five')
  end 


  def create_game(home,away,round)
    Game.create(title: round, hometeam: home, awayteam:away, user_id: self.id)
  end



end
