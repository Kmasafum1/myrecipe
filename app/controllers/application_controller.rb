class ApplicationController < ActionController::Base
  # :devise_contoller?とはdeviseを生成した際にできるヘルパーメソッドの一つで、deviseにまつわる画面に行った時に、という意味がある。
  # こうすることで全ての画面でconfigure_permitted_parametersをするのを防いでいるのである。
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_in_path_for(resource)
    user_path
    # サインインした後にユーザーページに飛ぶように設定
  end
  def after_sign_up_path_for(resource)
    user_path
    # サインアップした後にユーザーページに飛ぶように設定
  end
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
    # サインアウトしたときのログインページに遷移するよう設定
  end
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
    # 新規登録の際デフォルトだとemailとパスワードだけだがこうすることでサインアップの時に名前も追加して登録することができる
end

# RailsではすべてのコントローラはApplicationControllerを継承するので、コントローラ共通の処理はそこに書くことが多い