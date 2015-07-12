class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :login_user

  private

    # ログインユーザーの取得
    def login_user
      @login_user ||= User.find_by(id: session[:user_id])
    end

    # ログイン状態かどうか判定(ログイン必須ページ)
    def check_login
      unless @login_user ||= login_user
        reset_session
        redirect_to controller: 'users', action: 'login'
      end
    end

    # ログイン状態かどうか判定(ログイン時にアクセスできないページ)
    def check_login_in_login_action
      redirect_to :root if @login_user.present?
    end
end
