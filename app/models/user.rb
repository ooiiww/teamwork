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
  has_many :members
  has_many :teams, :through => :members

  def in_the? team
    members.find_by_team_id team
  end

  def join! team
    member = members.build
	member.team = team
	member.nickname = self.name
	member
  end

  def leave! team
    members.find_by_team_id(team).destroy
  end
end
