class User < ApplicationRecord
  has_one :profile
  belongs_to :member
  belongs_to :participation
  has_and_belongs_to_many :organizations, trough: :member
  has_many :messages
  has_and_belongs_to_many  :events, trough: :participation
  has_many :comments
  has_many :comment_replies
  has_many :date_votes
end


