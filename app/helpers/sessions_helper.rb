module SessionsHelper
  #渡されたユーザーでログインする
  def log_in(user)
    session[:user_id] = user.id #ユーザのブラウザ内の一時cookiesに保存済みのidが自動で作成される
  end
  #現在ログイン中のユーザを返す、いる場合のみ
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
  # ユーザがログインしていればtrue,してなかったらfalseを返す
  def logged_in?
    !current_user.nil?
  end

  # 現在のユーザをログアウトする
  def log_out
    reset_session
    @current_user = nil # 安全のため
  end
end
