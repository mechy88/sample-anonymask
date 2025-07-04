class Comment < ApplicationRecord
  validates :post_id, presence: true
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 10000 }

  belongs_to :user
  belongs_to :post
end
