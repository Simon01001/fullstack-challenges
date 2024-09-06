require 'uri'

class Post < ActiveRecord::Base
  belongs_to :user

  # TODO: Add some validation
  validates :title, presence: true
  validates :url, presence: true
  validates :user, presence: true
  validates :title, length: { minimum: 5 }
  validates :url, format: { with: /[a-z0-9]+([-.]{1}[a-z0-9]+)*\.[a-z]{2,5}/ix }
  validates :title, uniqueness: { case_sensitive: false }
end
