class Event < ApplicationRecord
  belongs_to :organization, trought: :event_list
  has_one :date_option
  has_one :event_creator, trough: :user
  has_many :resources
  has_many :user ,trough: :participation
  has_many :comments
  has_many :comment_reply, trough: :comments
end
