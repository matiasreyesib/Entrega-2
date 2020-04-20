class DateVote < ApplicationRecord
  belongs_to :user
  has_one :date_option
end
