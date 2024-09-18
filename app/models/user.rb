class User < ApplicationRecord
  has_one :user_role
  has_many :user_addresses

  has_many :employee_leaves
  has_many :leaves , through: :employee_leaves

  has_secure_password
  # mount_uploader :avatar, AvatarUploader
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, presence: true, uniqueness: true
  validates :password,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }
end
