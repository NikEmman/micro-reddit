class Comment < ApplicationRecord
    validates :body, presence: true, length: {maximum: 500, too_long: "%{count} characters is the maximum allowed."}
    validates :user_id, presence: true,  numericality: { only_integer: true }
    validates :post_id, presence: true,  numericality: { only_integer: true }
    

    belongs_to :post
    belongs_to :user
end
