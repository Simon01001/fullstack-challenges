class User < ActiveRecord::Base
  has_many :posts

  # TODO: Add some validation
  # TODO: Add some callbacks
  validates :username, presence: true
  validates :email, presence: true
  validates :username, uniqueness: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }
  before_validation :strip_whitespace
  after_create :send_welcome_email

  def strip_whitespace
    email&.strip!
  end

  def send_welcome_email
    FakeMailer.instance.mail("bob@lebonge.com", "Welcome to HN!")
  end
end
  #def welcome_email
    #@user = user
    #mail(to: @user.email, subject: "Welcome to this website")
  #end
