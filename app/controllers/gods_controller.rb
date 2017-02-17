class GodsController < ApplicationController
  def index
    @gods = God.new
  end
  
  def show
    @gods = God.find(@results.id)
  end
  
  def upload
    # アップロードされたファイルを自動で一時保存
    God.upload(params[:file])
    @results = God.all
    redirect_to gods_show_path(@results)
  end
  
  #private
  #def god_params
  #  params.require(:god).permit(:sku, :total)
  #end
end
