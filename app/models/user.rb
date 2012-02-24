class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false

  has_many :leadings, :class_name => 'Team'
  has_many :joinings
  has_many :teams, :through => :joinings

  def in_the? team
    joinings.find_by_team_id team
  end

  def join! team
    joining = joinings.build
	joining.team = team
	joining.nickname = self.name
	joining
  end

  def leave! team
    takings.find_by_joining_id(team).destroy
  end
end
