class User < ActiveRecord::Base
  has_many :posts

  # TODO: Add some validation
  # TODO: Add some callbacks
  validates :username, presence: true
  validates :email, presence: true
  validates :username, uniqueness: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }
end
