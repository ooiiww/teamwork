class Work < ActiveRecord::Base
  belongs_to :team
  belongs_to :user
  has_many :deals
end
