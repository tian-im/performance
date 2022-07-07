class User < ApplicationRecord
  has_many :messages, inverse_of: :recipient
end
