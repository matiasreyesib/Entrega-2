class CreateCommentReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_replies do |t|
      t.integer :user_id #referencia a id_usuario
      t.text :comment
      t.integer :comment_reply #referencia a id_comment

      t.timestamps
    end
  end
end
