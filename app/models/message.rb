class Message < ApplicationRecord
  has_many :users
  has_one :user
end
