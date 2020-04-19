class CommentReply < ApplicationRecord
  belongs_to :user
  has_one :comment
end
