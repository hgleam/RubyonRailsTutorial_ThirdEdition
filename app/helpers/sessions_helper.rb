module SessionsHelper
  # 渡されたユーザーでログインする
  def log_in(user)
    session[:user_id] = user.id
  end

  # 現在ログインしているユーザーを返す(ユーザーがログイン中の場合のみ)
  def current_user
    @current_user ||= User.find_by(session[:user_id])
  end

end
