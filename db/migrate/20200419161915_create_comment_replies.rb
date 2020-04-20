class CreateCommentReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_replies do |t|
      t.references :user_id, null: false, foreign_key: true
      t.text :comment
      t.references :comment_reply, null: false, foreign_key: true

      t.timestamps
    end
  end
end
#ESTA_CHECK