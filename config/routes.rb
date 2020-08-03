Rails.application.routes.draw do
  root 'home#top'
  devise_for :users
  resource :user, except: [:new, :create, :destroy]
  # resourceメソッドは、コントローラの７つのアクションに対して、indexとid付きのパスが生成されません！
  # show, editアクションの実行に、idが必要ない場合に有効
  # 今回はnewアクション（新規登録）,createなどを定義しないのでexpect
  resources :recipes do
    resource :likes, only: [:create, :destroy]
  end  
end
