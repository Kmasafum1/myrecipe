class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  # 名前登録する時に空の状態で登録できないように制限する
  has_many :recipes, dependent: :destroy
  # ユーザーが削除された時にユーザーに紐づいている投稿も全部削除するためにdependent destroyをする
  has_many :likes, dependent: :destroy   
  
  def already_liked?(recipe)
    self.likes.exists?(recipe_id: recipe.id)
    #既にいいねしているかどうか
  end
end
