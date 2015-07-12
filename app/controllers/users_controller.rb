class UsersController < ApplicationController

  before_action :check_login, only: [:index]
  before_action :check_login_in_login_action, only: [:login, :create]

  def index
  end

  def login
  end

  def create
    # Facebookログイン
    user  = User.from_omniauth(env['omniauth.auth'])
    if user.save
      session[:user_id] = user.id
      # ログイン後のページへ
      redirect_to :root and return
    end
    # ログイン失敗
    redirect_to auth_failure_path
  end

end
