class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id  # 誰が書いたコメントか,今ログイン中のユーザー
      t.integer :tweet_id  # どのツイートに付けられたか
      t.text :text  # コメント内容
      t.timestamps
    end
  end
end
