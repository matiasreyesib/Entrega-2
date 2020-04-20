class DateVote < ApplicationRecord
  belongs_to :user_id
  belongs_to :casted_vote
end
