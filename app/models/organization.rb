class Organization < ApplicationRecord
  has_many :member
  has_many :users, trough: member
  has_many :resources
end
