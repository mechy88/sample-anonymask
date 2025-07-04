class Comment < ApplicationRecord
  validates :post_id, presence: true
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 10000 }
end
