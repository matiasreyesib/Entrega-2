class Event < ApplicationRecord
  belongs_to :organization, trough: :event_list_organization
  belongs_to :user, trough: :event_list_user
  has_one :date_option
  has_one :user, trough: :user
  has_many :resources
  has_many :users ,trough: :participation
  has_many :comments
  has_many :comment_reply, trough: :comments
end
