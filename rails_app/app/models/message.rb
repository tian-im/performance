class Message < ApplicationRecord
  belongs_to :recipient, class_name: "User", foreign_key: :user_id
end
