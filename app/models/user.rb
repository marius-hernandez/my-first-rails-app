class User < ApplicationRecord
  has_secure_password
  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  self.primary_key = "uuid"

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 10, maximum: 255 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }
end
