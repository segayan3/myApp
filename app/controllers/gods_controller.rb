class GodsController < ApplicationController
  def index
    
  end
  
  def show
    @gods = God.all
  end
  
  def upload
    # アップロードされたファイルを自動で一時保存
    God.upload(params[:file])
    redirect_to god_path
  end
  
  #private
  #def god_params
  #  params.require(:god).permit(:sku, :total)
  #end
end
