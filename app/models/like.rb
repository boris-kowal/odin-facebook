class Like < ApplicationRecord
  belongs_to :post
  validates :post_id, :uniqueness => { :scope => :user_id }
end
