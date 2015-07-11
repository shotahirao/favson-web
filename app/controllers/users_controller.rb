class UsersController < ApplicationController

  def index
  end

  def login
  end

  def create
    # Facebookログイン
    user  = User.from_omniauth(env['omniauth.auth'])
    # ログイン後のページへ
    redirect_to :root and return if user.save
    # ログイン失敗
    redirect_to auth_failure_path
  end

end
