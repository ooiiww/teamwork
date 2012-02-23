class Team < ActiveRecord::Base
  belongs_to :user
  has_many :joinings
  has_many :users, :through => :joinings
end
