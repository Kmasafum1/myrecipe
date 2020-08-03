class Like < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  
  validates_uniqueness_of :recipe_id, scope: :user_id
  # 一人のユーザーのいいねを一回までと制限する 
end
