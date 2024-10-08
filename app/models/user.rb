class User < ApplicationRecord
  has_one :user_role
  has_one :user_addresses
  has_many :salaries
  has_many :leaves 
  has_many :attendances
  belongs_to :department

  has_secure_password
  # mount_uploader :avatar, AvatarUploader
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, presence: true, uniqueness: true
  validates :password,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }
end
