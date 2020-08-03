class Recipe < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  # 記事が削除された時にいいねも削除されるように設定 

  with_options presence: true do
    validates :title
    validates :body
    # 空のタイトルとボディー（テキスト）をさせないため
  end
end
