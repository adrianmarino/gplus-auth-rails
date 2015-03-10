class User < ActiveRecord::Base

  validates :name, presence: true
  validates :gplus, uniqueness: true, presence: true

end
