class Email < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :user_sent, class_name: "User"

  validates :subject, :body, :user_sent_id, presence: true

  scope :sent, -> (user_id) {
    where("user_sent_id = ? ", user_id).
    order("created_at DESC")
  }

  scope :received, ->( user_id) {
    joins(:emails_users).
      where("emails_users.user_id = ? ", user_id).
      order("created_at DESC")
  }
end
