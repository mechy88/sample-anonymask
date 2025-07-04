class User < ApplicationRecord
  has_secure_password

  normalizes :email, with: ->(email) { email.strip.downcase }

  validates :username, presence: true, length: { maximum: 20 }, uniqueness: true
  validates :email, presence: true, length: { maximum: 320 }, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } # TODO: verify if this really is an email, with the @ and everything
  validates :role, presence: true, inclusion: { in: [ 0, 1 ], message: "You do not have a valid role" }

  has_many :posts
  has_many :reactions
  has_many :comments
end
