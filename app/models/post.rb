class Post < ApplicationRecord
    validates :url, presence: true, format: {with: /\A(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?\Z/i}
    validates :user_id, presence: true,  numericality: { only_integer: true }
    
    belongs_to :user
    has_many :comments
end
