class User < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true, uniqueness: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true

    has_many :posts
    has_many :comments
end
