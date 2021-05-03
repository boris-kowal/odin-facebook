class Notification < ApplicationRecord
  belongs_to :user
  validates :notification_text, :uniqueness => { :scope => :user_id } 
end
