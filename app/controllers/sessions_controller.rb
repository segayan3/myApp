class SessionsController < ApplicationController
  def new
  end
  
  def create
    @admin = Admin.find_by(email: params[:session][:email].downcase)
    if @admin && @admin.authenticate(params[:session][:password])
      session[:admin_id] = @admin.id
      redirect_to root_path
    else
      flash[:danger] = "ログインに失敗しました。"
      render 'new'
    end
  end
  
  def destroy
    session[:admin_id] = nil
    flash[:info] = "ログアウトしました。"
    redirect_to login_path
  end
end
