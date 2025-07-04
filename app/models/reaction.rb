class Reaction < ApplicationRecord
  validates :post_id, presence: true
  validates :user_id, presence: true
  validates :reaction, presence: true

  belongs_to :user
  belongs_to :post
end
