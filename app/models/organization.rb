class Organization < ApplicationRecord
  has_one :member
  has_many :users, trough: member
  has_many :resources
end
