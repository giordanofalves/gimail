class Email < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :user_sent, class_name: "User"

  validates :subject, :body, :user_sent_id, presence: true
end
