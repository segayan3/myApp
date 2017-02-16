class AdminsController < ApplicationController
  def new
    # 管理者登録画面を表示
    @admin = Admin.new
  end
  
  def create
    # 管理者登録処理
    @admin = Admin.new(admin_params)
    if @admin.save
      # 登録に成功したらログイン画面へ
      flash[:success] = "会員登録が完了しました。"
      redirect_to login_path
    else
      # 登録に失敗したらもう一度登録画面へ
      render 'new'
    end
  end
  
  private
  def admin_params
    params.require(:admin).permit(:name, :email, :password, :password_confirmation)
  end
end
