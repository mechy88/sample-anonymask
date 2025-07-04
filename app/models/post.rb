class Post < ApplicationRecord
  enum :status, { unseen: 0, seen: 1, resolved: 2 }

  validates :user_id, presence: true

  validates :title, presence: true, length: { maximum: 300 }
  validates :content, presence: true, length: { maximum: 40000 }
  validates :status, presence: true, inclusion: { in: statuses.keys, message: " is not valid" }
end
